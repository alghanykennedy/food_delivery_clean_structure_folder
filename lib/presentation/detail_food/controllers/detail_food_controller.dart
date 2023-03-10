import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/data/services/meal_detail/meal_detail_service.dart';
import 'package:food_delivery/domain/meal_detail/meal_detail_model.dart';
import 'package:get/get.dart';

class DetailFoodController extends GetxController {
  final Rx<Color> iconColor = Colors.black26.obs;
  void onClickButton() {
    if (iconColor.value == Colors.black26) {
      iconColor.value = Colors.redAccent;
    } else {
      iconColor.value = Colors.black26;
    }
  }

  RxBool isLoading = false.obs;
  final mealDetailService = MealDetailService();
  String id = '';
  Rx<Meal?> detailMeal = Meal(idMeal: '').obs;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    getDetailMealsItem();
  }

  getDetailMealsItem() async {
    isLoading(true);
    try {
      DetailMealsModel response =
          await mealDetailService.getDetailMeals(id: id);
      var res = response.meals![0];
      detailMeal(res);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
      Get.snackbar('Error', e.toString());
    }
  }
}
