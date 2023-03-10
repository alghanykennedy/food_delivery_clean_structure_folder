import 'package:food_delivery/domain/list_meal/meal_model.dart';
import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';

class HomeRepository {
  final MealService _mealService;

  HomeRepository({required MealService mealService})
      : _mealService = mealService;

  Future<Meals> getListMeals() async {
    try {
      var response = await _mealService.getMeals();
      Meals meals = response;
      return meals;
    } catch (e) {
      rethrow;
    }
  }
}
