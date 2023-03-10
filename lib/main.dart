import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';

import 'package:get/get.dart';

import 'initializer.dart';

Future<void> main() async {
  await Initializer.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
