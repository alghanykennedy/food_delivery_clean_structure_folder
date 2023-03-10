import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';
import 'package:food_delivery/presentation/home/views/home_view.dart';

import 'package:get/get.dart';

import '../../../shared/button_widget/button_widget.dart';
import '../../../shared/color_theme_widget/color_theme_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: ListView(
          children: [
            SizedBox(
              height: 535,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 46, right: 46, top: 50, bottom: 41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black26)),
                    TextFormField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                      decoration: const InputDecoration(
                        hintText: "E-mail",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black26)),
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                      decoration: const InputDecoration(hintText: "Password"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFFA4A0C),
                      ),
                      child: const Text("Forgot passcode?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    const SizedBox(
                      height: 136,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [buttonLoginWidget()],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonLoginWidget() {
    return SizedBox(
      width: 314,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: deepOrange800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () => Get.offNamed(Routes.HOME),
        child: Text(
          "Login",
          style: const TextStyle(
              color: Color(0xffffffff), fontSize: 20, fontFamily: 'SF-Pro'),
        ),
      ),
    );
  }
}
