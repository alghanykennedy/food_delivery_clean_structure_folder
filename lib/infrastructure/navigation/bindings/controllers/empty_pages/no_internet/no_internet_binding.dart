import 'package:get/get.dart';

import '../../../../../../presentation/empty_pages/no_internet/controllers/no_internet_controller.dart';

class NoInternetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoInternetController>(
      () => NoInternetController(),
    );
  }
}
