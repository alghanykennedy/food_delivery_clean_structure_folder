import 'package:food_delivery/infrastructure/data/services/search/search_service.dart';
import 'package:food_delivery/domain/search/meal_search_model.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SearchController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Meal> searchMealItem = <Meal>[].obs;
  final mealSearchService = SearchService();
  var searchText = <Meal>[].obs;
  RxString searchParams = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getSearchMeals(String value) async {
    isLoading(true);
    searchMealItem.clear();
    value.toLowerCase();
    try {
      SearchMealsModel responseSearch =
          await mealSearchService.getSearchMeals(value);
      searchMealItem.addAll(responseSearch.meals);
      Logger().d(responseSearch.meals.first.idMeal);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      // Get.snackbar('Error', e.toString());
    }
  }
}
