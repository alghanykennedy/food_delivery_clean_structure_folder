import 'package:get/get.dart';

import '../../../../../../presentation/profiles/profile_change/controllers/profile_change_controller.dart';

class ProfileChangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileChangeController>(
      () => ProfileChangeController(),
    );
  }
}
