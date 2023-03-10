import 'package:flutter/material.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';
import 'package:food_delivery/presentation/detail_food/views/detail_food_view.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(
      {Key? key,
      required this.title,
      this.imageFood = '',
      this.imageUrl = '',
      this.idSearch = ''})
      : super(key: key);
  final String title;
  final String imageFood;
  final String imageUrl;
  final String idSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.DETAIL_FOOD, arguments: {'id': idSearch});
                print(idSearch);
              },
              child: Container(
                height: 185,
                width: 130,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "N1,900",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: -45,
                left: 15,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: imageUrl == ''
                      ? CircleAvatar(backgroundImage: AssetImage(imageFood))
                      : CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                ))
          ],
        ),
      ),
    );
  }
}
