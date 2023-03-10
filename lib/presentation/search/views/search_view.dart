import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shared/color_theme_widget/color_theme_widget.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import '../widgets/food_card_search_widget.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: background,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (value) => controller.getSearchMeals(value),
          ),
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                margin: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    "Found ${controller.searchMealItem.length} Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 45.0,
                  top: 160.0,
                ),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 50,
                  children: [
                    ...controller.searchMealItem.map(
                      (item) {
                        return FoodCard(
                          imageUrl: item.strMealThumb,
                          title: item.strMeal,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
