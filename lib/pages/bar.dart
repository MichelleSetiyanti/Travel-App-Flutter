import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/pages/bar_controller.dart';
import 'package:travel_app_flutter/pages/cart/cart.dart';
import 'package:travel_app_flutter/pages/favourite/favourite.dart';
import 'package:travel_app_flutter/pages/home/home.dart';
import 'package:travel_app_flutter/pages/profile/profile.dart';
import '../widgets/app_bottom_bar.dart';

class BarPage extends StatelessWidget {
  BarController controller = Get.put(BarController());
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(() {
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: AppDisplayPage(index: controller.indexBar.value),
            ),
            Positioned(
              bottom: 0,
              width: 1.sw,
              child: AppBottomBar(
                index: controller.indexBar.value,
                onTap: (int i) {
                  controller.setSelectedIndexPage(index: i);
                },
              ),
            )
          ],
        );
      }),
    );
  }
}

Widget AppDisplayPage({int index = 0}) {
  switch (index) {
    case 0:
      return HomePage();
    case 1:
      return FavouritePage();
    case 2:
      return CartPage();
    case 3:
      return ProfilePage();
    default:
      return HomePage();
  }
}
