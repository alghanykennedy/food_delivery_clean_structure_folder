import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../shared/button_widget/button_widget.dart';
import '../../shared/color_theme_widget/color_theme_widget.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: background,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: (() {
              Get.toNamed(Routes.HOME);
            }),
            color: Colors.black,
          ),
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Obx(
          () => Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: controller.models.length,
                    itemBuilder: ((context, index) {
                      final model = controller.models[index];
                      return Column(
                        children: [
                          Slidable(
                            // Specify a key if the Slidable is dismissible.
                            key: const ValueKey(0),
                            // The end action pane is the one at the right or the bottom side.
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                CustomSlidableAction(
                                    padding: const EdgeInsets.only(left: 15),
                                    onPressed: ((context) {}),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: deepOrange800,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                        color: Colors.white,
                                      ),
                                    )),
                                CustomSlidableAction(
                                    padding: const EdgeInsets.only(right: 30),
                                    onPressed: ((context) {}),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: deepOrange800,
                                    )),
                              ],
                            ),
                            child: buildListTile(model),
                          ),
                        ],
                      );
                    })),
              ),
              ButtonWidget(
                  textTitle: 'Complete order', screen: Routes.CHECKOUT),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ));
  }

  Widget buildListTile(MyModel model) => ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(model.image),
        ),
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  model.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  model.price.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: () => controller.decrement(model),
                  icon: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  model.quantity.toString(),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 8,
                ),
                IconButton(
                  onPressed: () => controller.increment(model),
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      );
}

class MyModel {
  final String name;
  final String image;
  final double price;
  int quantity;

  MyModel({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}
