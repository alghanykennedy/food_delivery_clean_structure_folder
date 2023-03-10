import 'package:get/get.dart';

import '../../../../../presentation/detail_food/controllers/detail_food_controller.dart';

class DetailFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFoodController>(
      () => DetailFoodController(),
    );
  }
}
