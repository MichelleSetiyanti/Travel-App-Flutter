import 'package:get/get.dart';
import 'package:travel_app_flutter/pages/bar.dart';
import 'package:travel_app_flutter/pages/cart/cart.dart';
import 'package:travel_app_flutter/pages/category/detailCategory.dart';
import 'package:travel_app_flutter/pages/favourite/favourite.dart';
import 'package:travel_app_flutter/pages/home/home.dart';
import 'package:travel_app_flutter/pages/profile/profile.dart';

class AppRoutes {
  static final String home = '/home';
  static final String bar = '/bar';
  static final String favourite = '/favourite';
  static final String cart = '/cart';
  static final String profile = '/profile';
  static final String detail = '/detail';
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.bar, page: () => BarPage()),
    GetPage(name: AppRoutes.favourite, page: () => FavouritePage()),
    GetPage(name: AppRoutes.cart, page: () => CartPage()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.detail, page: () => DetailPage()),
  ];
}
