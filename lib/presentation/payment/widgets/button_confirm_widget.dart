import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButtonConfirmWidget extends StatelessWidget {
  const ActionButtonConfirmWidget({Key? key, required this.buttonAction})
      : super(key: key);
  final String buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                backgroundColor: Color(0xffffffff),
                child: Container(
                  height: 360.0,
                  width: 500.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 80.0,
                        width: 500.0,
                        padding: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Color(0xffededed),
                            borderRadius: BorderRadius.only(topLeft: Radius
                                .circular(50), topRight: Radius.circular(50))
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 40,
                              vertical: 10),
                          child: Text("Please Note ", style: TextStyle
                            (fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "SF-Pro-Text-Regular",),),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 30,
                      ),
                        Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Container(
                                child: Wrap(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric
                                          (horizontal: 40),
                                        child: Text(
                                          "DELIVERY TO MAINLAND",
                                          style: TextStyle(fontSize: 15,fontFamily:"SF-Pro-Text-Regular" ,color:
                                          Colors.grey),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric
                                          (horizontal: 40),
                                        child: Text("N1000 - N2000", style:
                                        TextStyle(fontSize: 17),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(color: Colors.black26, indent: 40,
                                endIndent: 30),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Container(
                                child: Wrap(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:   EdgeInsets.symmetric
                                          (horizontal: 40),
                                        child: Text(
                                          "DELIVERY TO ISLAND",
                                          style: TextStyle(fontSize: 15,fontFamily:"SF-Pro-Text-Regular" ,color:
                                          Colors.grey),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric
                                          (horizontal: 40),
                                        child: Text("N2000 - N3000",style:
                                        TextStyle(fontSize: 17),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      SizedBox(
                        width: 50,
                        height: 40,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: (){
                              print("Confirm cancel press");
                              Get.back();
                            },
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              minimumSize: Size(50.0, 60.0),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              print("Confirm proceed press");
                              Get.back();
                            },
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 50),
                              child: Text(
                                "Proceed",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              minimumSize: Size(100.0,
                                  60.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Text(
          buttonAction,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(314.0, 70.0),
        ),
      ),
    );
  }
}