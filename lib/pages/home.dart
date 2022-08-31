import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/constants/textstyles.dart';
import 'package:travel_app_flutter/constants/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_flutter/widgets/categoryWidget.dart';
import 'package:travel_app_flutter/widgets/judulWidget.dart';

import '../widgets/categoryItem.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: mediaQueryData.viewInsets,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 44.h, left: 25.w, right: 25.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: AppColor.bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.r),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/icons/menu.svg",
                            height: 18.h,
                          ),
                          // icon: Icon(Icons.tab),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Current Location",
                              style: AppTextStyle.defaultStyle),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColor.primaryColor,
                                size: 14.r,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "Denpasar, Bali",
                                style: AppTextStyle.loca,
                              )
                            ],
                          )
                        ],
                      ),
                      // Text("Halo3"),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profil2.png"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36.w,
                  ),
                  JudulWidget(judul: "Category"),
                  SizedBox(
                    height: 22.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryWidget(
                            gambar: "assets/icons/MOUNTAIN.svg",
                            judul: "Mountain"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/WATERFALL.svg",
                            judul: "Waterfall"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/RIVER.svg", judul: "River"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/FOREST.svg", judul: "Forest"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem(
                            gambar: 'assets/images/Rinjani.png',
                            harga: '36',
                            judul: "Rinjani Mountain",
                            tempat: "Lombok, Indonesia"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryItem(
                            gambar: 'assets/images/Bromo.png',
                            harga: '20',
                            judul: "Bromo Mountain",
                            tempat: "East Java, Indonesia"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  JudulWidget(judul: "Popular Destination"),
                  SizedBox(
                    height: 22.h,
                  ),
                  PopularWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109.h,
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
                image: AssetImage("assets/images/Pink.png"),
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
                "The Pink Beach",
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
                    "Komodo Island, Indonesia",
                    style: AppTextStyle.loca2
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                  "This exceptional beach gets its striking color from microscopic animals called...",
                  style: AppTextStyle.desc),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Text(
                    "\$ 48",
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
