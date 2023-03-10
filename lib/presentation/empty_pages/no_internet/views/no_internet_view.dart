import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';
import 'package:food_delivery/presentation/home/views/home_view.dart';

import 'package:get/get.dart';

import '../../../shared/button_widget/button_widget.dart';
import '../controllers/no_internet_controller.dart';

class NoInternetView extends GetView<NoInternetController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 175,
                  ),
                  Image.asset('assets/img/no_internet.png',
                      color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "No Internet Connection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Your internet connection is currently",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("not available please check or try again.",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonWidget(textTitle: "Try Again", screen: Routes.HOME)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
