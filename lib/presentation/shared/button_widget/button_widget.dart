import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shared/color_theme_widget/color_theme_widget.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final String textTitle;
  final String screen;
  const ButtonWidget({super.key, required this.textTitle, required this.screen});

  @override
  Widget build(BuildContext context) {
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
        onPressed: () => Get.toNamed(screen),
        child: Text(
          textTitle,
          style: const TextStyle(color: Color(0xffffffff), fontSize: 20, fontFamily: 'SF-Pro'),
        ),
      ),
    );
  }
}
