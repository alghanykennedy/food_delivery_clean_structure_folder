import 'package:get/get.dart';

import '../../../../../../presentation/empty_pages/empty_order/controllers/empty_order_controller.dart';

class EmptyOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyOrderController>(
      () => EmptyOrderController(),
    );
  }
}
