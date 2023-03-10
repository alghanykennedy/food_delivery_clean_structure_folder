import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';
import 'package:food_delivery/presentation/profiles/profile/views/profile_view.dart';

import 'package:get/get.dart';

import '../../../shared/button_widget/button_widget.dart';
import '../../../shared/font_widget/font_widget.dart';

import '../controllers/profile_change_controller.dart';

class ProfileChangeView extends GetView<ProfileChangeController> {
  ProfileChangeController profileChangeController =
      Get.put(ProfileChangeController());

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(
                              'assets/icon/icon_btn_back.svg')),
                      const SizedBox(
                        width: 100,
                      ),
                      const FontWidget(text: "My Profile", sizeFont: 18)
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: FontWidget(text: "Information", sizeFont: 16)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Image.asset('assets/img/img_profile.png',
                                    height: 60, width: 60),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 20,
                                      child: const Text(
                                        "Marvis Ighedosa",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                    Container(
                                      width: 165,
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 8),
                                      child: const Text(
                                        "Dosamarvis@gmail.com",
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 54,
                                      width: 180,
                                      child: const Text(
                                        "No 15 uti street off ovie palace road effurun delta state",
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: FontWidget(text: "Payment Method", sizeFont: 17),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Obx(() => ListTile(
                                  title: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFFF47B0A)),
                                        child: SvgPicture.asset(
                                            'assets/icon/icon_card.svg',
                                            height: 12,
                                            width: 16,
                                            fit: BoxFit.scaleDown),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Card",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  leading: Radio<RadioButtonProfile>(
                                    value: RadioButtonProfile.cardProfile,
                                    groupValue:
                                        profileChangeController.character.value,
                                    activeColor: const Color(0xFFFA4A0C),
                                    onChanged: (RadioButtonProfile? value) {
                                      profileChangeController.onClickProfile(
                                          RadioButtonProfile.cardProfile);
                                    },
                                  ),
                                  onTap: () {
                                    profileChangeController.onClickProfile(
                                        RadioButtonProfile.cardProfile);
                                  },
                                )),
                            const Divider(
                                color: Colors.black26,
                                indent: 80,
                                endIndent: 30),
                            Obx(() => ListTile(
                                  onTap: () {
                                    profileChangeController.onClickProfile(
                                        RadioButtonProfile.bankAccountProfile);
                                  },
                                  title: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFFEB4796)),
                                        child: SvgPicture.asset(
                                            'assets/icon/icon_bank_account.svg',
                                            height: 12,
                                            width: 16,
                                            fit: BoxFit.scaleDown),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Bank Account",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  leading: Radio<RadioButtonProfile>(
                                    value:
                                        RadioButtonProfile.bankAccountProfile,
                                    groupValue:
                                        profileChangeController.character.value,
                                    activeColor: const Color(0xFFFA4A0C),
                                    onChanged: (RadioButtonProfile? value) {
                                      profileChangeController.onClickProfile(
                                          RadioButtonProfile
                                              .bankAccountProfile);
                                    },
                                  ),
                                )),
                            const Divider(
                                color: Colors.black26,
                                indent: 80,
                                endIndent: 30),
                            Obx(() => ListTile(
                                  onTap: () {
                                    profileChangeController.onClickProfile(
                                        RadioButtonProfile.paypalProfile);
                                  },
                                  title: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFF0038FF)),
                                        child: SvgPicture.asset(
                                            'assets/icon/icon_paypal.svg',
                                            height: 12,
                                            width: 16,
                                            fit: BoxFit.scaleDown),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Paypal",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  leading: Radio<RadioButtonProfile>(
                                    value: RadioButtonProfile.paypalProfile,
                                    groupValue:
                                        profileChangeController.character.value,
                                    activeColor: const Color(0xFFFA4A0C),
                                    onChanged: (RadioButtonProfile? value) {
                                      profileChangeController.onClickProfile(
                                          RadioButtonProfile.paypalProfile);
                                    },
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: ButtonWidget(
                          textTitle: "Update", screen: Routes.PROFILE),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
