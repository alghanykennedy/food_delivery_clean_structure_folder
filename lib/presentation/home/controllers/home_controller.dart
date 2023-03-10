import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';
import 'package:food_delivery/domain/list_meal/meal_model.dart';
import 'package:food_delivery/presentation/home/repository/home_repository.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeController extends GetxController {
  final HomeRepository _homeRepository;
  GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

  HomeController({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  RxBool isLoading = false.obs;
  RxList<Meal> listMeal = <Meal>[].obs;
  MealService mealService = MealService();

  void toggleMenu() {
    if (sideMenuKey.currentState!.isOpened) {
      sideMenuKey.currentState!.closeSideMenu();
    } else {
      sideMenuKey.currentState!.openSideMenu();
    }
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    getListMeals();
    Logger().d(getListMeals());
  }

  Future<void> getListMeals() async {
    isLoading(true);
    try {
      var response = await _homeRepository.getListMeals();
      listMeal.addAll(response.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
