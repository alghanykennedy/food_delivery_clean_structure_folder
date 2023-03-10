import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';
import 'package:food_delivery/presentation/shared/color_theme_widget/color_theme_widget.dart';

import 'package:get/get.dart';

import '../../shared/button_widget/button_widget.dart';
import '../controllers/detail_food_controller.dart';

class DetailFoodView extends GetView<DetailFoodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => ListTile(
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: controller.iconColor.value,
                                ),
                                onPressed: () {
                                  controller.onClickButton();
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(() => Container(
                    child: controller.isLoading.value == true
                        ? CircularProgressIndicator()
                        : Column(
                            children: [
                              Container(
                                  height: 275,
                                  width: 275,
                                  child: Image(
                                      image: NetworkImage(controller
                                              .detailMeal.value?.strMealThumb ??
                                          ''))),
                              SizedBox(height: 45),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  controller.detailMeal.value?.strMeal ?? '',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "N1,900",
                                  style: TextStyle(
                                      color: Color(0xffFA4A0C),
                                      fontSize: 22,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 21.5),
                                      child: const Text(
                                        'Youtube Link',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text(controller
                                            .detailMeal.value?.strYoutube ??
                                        ''),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Text(
                                        'Instructions',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text(controller.detailMeal.value
                                            ?.strInstructions ??
                                        ''),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 20, top: 50),
                                      child: ButtonWidget(
                                          textTitle: "Add to cart",
                                          screen: Routes.CART),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
