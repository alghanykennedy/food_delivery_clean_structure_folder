import 'package:get/get.dart';

import '../../../../../../presentation/empty_pages/empty_offer/controllers/empty_offer_controller.dart';

class EmptyOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyOfferController>(
      () => EmptyOfferController(),
    );
  }
}
