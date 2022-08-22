import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/constants/textstyles.dart';
import 'package:travel_app_flutter/constants/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_flutter/widgets/categoryWidget.dart';
import 'package:travel_app_flutter/widgets/judulWidget.dart';

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
                            Radius.circular(8),
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
                                size: 14,
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
                              AssetImage("assets/images/profil.png"),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
