import 'package:get/get.dart';

import '../../../../../../presentation/empty_pages/no_item/controllers/no_item_controller.dart';

class NoItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoItemController>(
      () => NoItemController(),
    );
  }
}
