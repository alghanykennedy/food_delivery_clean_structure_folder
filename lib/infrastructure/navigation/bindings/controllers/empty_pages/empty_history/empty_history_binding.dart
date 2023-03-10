import 'package:get/get.dart';

import '../../../../../../presentation/empty_pages/empty_history/controllers/empty_history_controller.dart';

class EmptyHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyHistoryController>(
      () => EmptyHistoryController(),
    );
  }
}
