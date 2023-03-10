import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/cart/views/cart_view.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<MyModel> models = <MyModel>[
    MyModel(
        name: 'product1',
        image: 'assets/img/food1.png',
        price: 215.80,
        quantity: 0),
    MyModel(
        name: 'product2',
        image: 'assets/img/food1.png',
        price: 415.30,
        quantity: 0),
    MyModel(
        name: 'product3',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product5',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product4',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product6',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product7',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product8',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product9',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
    MyModel(
        name: 'product10',
        image: 'assets/img/food1.png',
        price: 115.50,
        quantity: 0),
  ].obs;

  increment(MyModel item) {
    item.quantity++;
    models.refresh();
  }

  decrement(MyModel item) {
    if (item.quantity <= 0) {
      Get.snackbar(
        "Buying food",
        "can't be less than zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      item.quantity--;
    }
    models.refresh();
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
