import 'package:get/get.dart';

enum RadioButtonProfile { doorDelivery, pickUp }

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutController

  final Rx<RadioButtonProfile> character = RadioButtonProfile.doorDelivery.obs;

  void onClickRadio(value){
    character.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
