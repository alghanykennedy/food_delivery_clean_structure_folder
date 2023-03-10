import 'package:get/get.dart';

import 'package:food_delivery/infrastructure/navigation/bindings/controllers/cart/cart_binding.dart';
import 'package:food_delivery/presentation/cart/views/cart_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/checkout/checkout_binding.dart';
import 'package:food_delivery/presentation/checkout/views/checkout_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/detail_food/detail_food_binding.dart';
import 'package:food_delivery/presentation/detail_food/views/detail_food_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/empty_pages/empty_history/empty_history_binding.dart';
import 'package:food_delivery/presentation/empty_pages/empty_history/views/empty_history_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/empty_pages/empty_offer/empty_offer_binding.dart';
import 'package:food_delivery/presentation/empty_pages/empty_offer/views/empty_offer_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/empty_pages/empty_order/empty_order_binding.dart';
import 'package:food_delivery/presentation/empty_pages/empty_order/views/empty_order_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/home/home_binding.dart';
import 'package:food_delivery/presentation/home/views/home_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/auth/login/login_binding.dart';
import 'package:food_delivery/presentation/auth/login/views/login_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/empty_pages/no_internet/no_internet_binding.dart';
import 'package:food_delivery/presentation/empty_pages/no_internet/views/no_internet_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/empty_pages/no_item/no_item_binding.dart';
import 'package:food_delivery/presentation/empty_pages/no_item/views/no_item_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/payment/payment_binding.dart';
import 'package:food_delivery/presentation/payment/views/payment_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/profiles/profile/profile_binding.dart';
import 'package:food_delivery/presentation/profiles/profile/views/profile_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/profiles/profile_change/profile_change_binding.dart';
import 'package:food_delivery/presentation/profiles/profile_change/views/profile_change_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/search/search_binding.dart';
import 'package:food_delivery/presentation/search/views/search_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/auth/sign_up/sign_up_binding.dart';
import 'package:food_delivery/presentation/auth/sign_up/views/sign_up_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/splash/splash_binding.dart';
import 'package:food_delivery/presentation/splash/views/splash_view.dart';
import 'package:food_delivery/infrastructure/navigation/bindings/controllers/auth/tab_bar_login_signup/tab_bar_login_signup_binding.dart';
import 'package:food_delivery/presentation/auth/tab_bar_login_signup/views/tab_bar_login_signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TAB_BAR_LOGIN_SIGNUP,
      page: () => TabBarLoginSignupView(),
      binding: TabBarLoginSignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FOOD,
      page: () => DetailFoodView(),
      binding: DetailFoodBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_CHANGE,
      page: () => ProfileChangeView(),
      binding: ProfileChangeBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_ORDER,
      page: () => EmptyOrderView(),
      binding: EmptyOrderBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_OFFER,
      page: () => EmptyOfferView(),
      binding: EmptyOfferBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_HISTORY,
      page: () => EmptyHistoryView(),
      binding: EmptyHistoryBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.NO_INTERNET,
      page: () => NoInternetView(),
      binding: NoInternetBinding(),
    ),
    GetPage(
      name: _Paths.NO_ITEM,
      page: () => NoItemView(),
      binding: NoItemBinding(),
    ),
  ];
}
