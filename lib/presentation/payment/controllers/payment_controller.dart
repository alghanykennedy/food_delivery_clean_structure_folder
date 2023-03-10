import 'package:get/get.dart';

enum PaymentGroup { card, bankAccount }

enum DeliveryGroup { doorDelivery, pickUp }

class PaymentController extends GetxController {
  //TODO: Implement PaymentController

  final Rx<PaymentGroup> char = PaymentGroup.card.obs;
  final Rx<DeliveryGroup> group = DeliveryGroup.doorDelivery.obs;

  void onClickPayment(value){
    char.value = value;
  }

  void onClickDelivery(value){
    group.value = value;
  }

  final count = 0.obs;
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
  void increment() => count.value++;
}
