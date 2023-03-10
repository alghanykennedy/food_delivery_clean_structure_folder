import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/infrastructure/navigation/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:skeletons/skeletons.dart';

import '../../shared/color_theme_widget/color_theme_widget.dart';
import '../widgets/food_card_widget/food_card_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      radius: BorderRadius.circular(30),
      menu: buildMenu(),
      key: controller.sideMenuKey,
      background: const Color(0xFFFA4A0C),
      type: SideMenuType.shrinkNSlide,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: background,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              controller.toggleMenu();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 42.0),
              child: IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.CART);
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[400],
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delicious \nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              //To add some elevation & border radius to text field need to wrap in Material
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SEARCH);
                },
                child: Container(
                  height: 60,
                  width: 314,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFEFEEEE)),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 35, top: 21, bottom: 21),
                        child: SizedBox(
                          height: 18,
                          width: 18,
                          child: Icon(
                            Icons.search_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: const Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DefaultTabController(
                length: 4,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: deepOrange800,
                        labelColor: deepOrange800,
                        unselectedLabelColor: grey400,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: const [
                          Tab(
                            text: "Foods",
                          ),
                          Tab(
                            text: "Drinks",
                          ),
                          Tab(
                            text: "Snacks",
                          ),
                          Tab(
                            text: "Sauce",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "see more",
                              style:
                                  TextStyle(fontSize: 16, color: deepOrange800),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: TabBarView(clipBehavior: Clip.none, children: [
                        Obx(() => Container(
                              child: controller.isLoading.value == true
                                  ? SkeletonListView()
                                  : controller.listMeal.isEmpty
                                      ? SizedBox()
                                      : ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ...controller.listMeal
                                                .map((item) => Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 20,
                                                      ),
                                                      child: FoodCardWidget(
                                                        imageUrl:
                                                            item.strMealThumb,
                                                        text: item.strMeal,
                                                        id: item.idMeal,
                                                      ),
                                                    ))
                                          ],
                                        ),
                            )),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Bubur ayam"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Bubur ayam"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Bubur ayam"),
                          ],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Nasi padang"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Nasi padang"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Nasi padang"),
                          ],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Es campur"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Es campur"),
                            SizedBox(
                              width: 20,
                            ),
                            FoodCardWidget(
                                image: "assets/img/food1.png",
                                text: "Es campur"),
                          ],
                        ),
                      ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: deepOrange800,
            unselectedItemColor: grey400,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                    icon: const Icon(Icons.home)),
              ),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: IconButton(
                    onPressed: () {
                      Get.to(Text("Favorite Page"));
                    },
                    icon: const Icon(Icons.favorite)),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.PROFILE);
                    },
                    icon: const Icon(Icons.person)),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.EMPTY_HISTORY);
                    },
                    icon: const Icon(Icons.history)),
              ),
            ]),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 39),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  leading: const Icon(Icons.account_circle_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Profile",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.EMPTY_ORDER);
                  },
                  leading: SvgPicture.asset('assets/icon/icon_orders.svg'),
                  title: const Text("Orders",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.EMPTY_OFFER);
                  },
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Offers and Promo",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading:
                      SvgPicture.asset('assets/icon/icon_privacy_policy.svg'),
                  title: const Text("Privacy Policy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/icon/icon_security.svg'),
                  title: const Text("Security",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.TAB_BAR_LOGIN_SIGNUP);
                  },
                  title: Row(
                    children: const [
                      Text("Sign-out",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward, size: 20.0, color: Colors.white)
                    ],
                  ),
                  textColor: Colors.white,
                  dense: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerListTile() {
    return const Divider(color: Color(0xFFF4F4F8), endIndent: 60, indent: 70);
  }
}
