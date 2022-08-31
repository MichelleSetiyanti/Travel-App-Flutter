import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_color.dart';
import '../constants/textstyles.dart';

class PopularWidget extends StatelessWidget {
  // const PopularWidget({
  //   Key? key,
  // }) : super(key: key);

  PopularWidget({
    required this.address,
    required this.desc,
    required this.price,
    required this.title,
    required this.image,
  });

  final String title;
  final String address;
  final String desc;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120.h,
      width: 325.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Row(children: [
          Container(
            width: 95.w,
            height: 85.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.r),
              // color: Colors.black,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Expanded(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.defaultHeaderTwo,
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.primaryColor,
                    size: 10.r,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    address,
                    style: AppTextStyle.loca2
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(desc, style: AppTextStyle.desc),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Text(
                    "\$ $price",
                    style: AppTextStyle.defaultHeaderThree,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    "\/Person",
                    style: AppTextStyle.smallText
                        .copyWith(color: AppColor.secondTextColor),
                  )
                ],
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
