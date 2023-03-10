import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';
import 'package:food_delivery/presentation/home/repository/home_repository.dart';

class HomeRepositoryBinding {
  late HomeRepository _homeRepository;

  HomeRepository get repository => _homeRepository;

  HomeRepositoryBinding() {
    final mealService = MealService();
    _homeRepository = HomeRepository(mealService: mealService);
  }
}
