import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_flutter/constants/app_color.dart';

class AppBottomBar extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  AppBottomBar({required this.onTap, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(112, 144, 176, 0.08),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(2, 0))
      ]),
      child: Material(
        color: Colors.white,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(70.h),
        //     topRight: Radius.circular(70.h),
        //   ),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              splashColor: Color.fromARGB(255, 206, 249, 255),
              splashRadius: 100.r,
              onPressed: () => onTap(0),
              icon: Icon(
                Icons.home_rounded,
                color: index == 0 ? AppColor.primaryColor : Colors.grey[400],
              ),
            ),
            IconButton(
              splashColor: Color.fromARGB(255, 206, 249, 255),
              splashRadius: 100.r,
              onPressed: () => onTap(1),
              icon: Icon(
                Icons.favorite,
                color: index == 1 ? AppColor.primaryColor : Colors.grey[400],
              ),
            ),
            IconButton(
              splashColor: Color.fromARGB(255, 206, 249, 255),
              splashRadius: 100.r,
              onPressed: () => onTap(2),
              icon: Icon(
                Icons.shopping_basket,
                color: index == 2 ? AppColor.primaryColor : Colors.grey[400],
              ),
            ),
            IconButton(
              splashColor: Color.fromARGB(255, 206, 249, 255),
              splashRadius: 100.r,
              onPressed: () => onTap(3),
              icon: Icon(
                Icons.person,
                color: index == 3 ? AppColor.primaryColor : Colors.grey[400],
              ),
            ),
            // IconButton(
            //     splashColor: Colors.cyan[400],
            //     splashRadius: 100.r,
            //     onPressed: () => onTap(1),
            //     icon: Icon(
            //       Icons.account_circle_sharp,
            //       color: index == 1 ? AppColor.primaryColor : Colors.grey[400],
            //     )),
          ],
        ),
      ),
    );
  }
}
