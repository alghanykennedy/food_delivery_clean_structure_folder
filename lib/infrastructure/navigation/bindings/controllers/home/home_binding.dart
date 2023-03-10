import 'package:food_delivery/infrastructure/navigation/bindings/controllers/home/home_repository_binding.dart';
import 'package:get/get.dart';

import '../../../../../presentation/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    final homeRepositoryBinding = HomeRepositoryBinding();
    Get.lazyPut<HomeController>(
      () => HomeController(homeRepository: homeRepositoryBinding.repository),
    );
  }
}
