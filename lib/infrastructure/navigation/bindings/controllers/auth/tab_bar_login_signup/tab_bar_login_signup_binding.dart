import 'package:get/get.dart';

import '../../../../../../presentation/auth/tab_bar_login_signup/controllers/tab_bar_login_signup_controller.dart';

class TabBarLoginSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabBarLoginSignupController>(
      () => TabBarLoginSignupController(),
    );
  }
}
