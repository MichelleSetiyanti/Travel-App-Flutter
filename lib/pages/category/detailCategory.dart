import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/constants/textstyles.dart';
import 'package:travel_app_flutter/widgets/previewImage.dart';

import '../../constants/app_color.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0.w,
              right: 0.w,
              child: Container(
                width: double.maxFinite,
                height: 380.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Rinjani.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 25.w,
              top: 44.h,
              left: 25.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          size: 18.sp,
                          Icons.keyboard_arrow_left_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 40.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          size: 18.sp,
                          Icons.favorite_border,
                          color: Color.fromARGB(255, 255, 40, 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0.w,
              right: 0.w,
              top: 380 - 110,
              bottom: 0,
              // bottom: 100,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rinjani Mountain",
                              style: AppTextStyle.defaultHeaderOne,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColor.primaryColor,
                                  size: 16.r,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "Lombok, Indonesia",
                                  style: AppTextStyle.loca.copyWith(
                                    color: AppColor.primaryColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          // width: 20.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "\$48",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.defaultHeaderOne.copyWith(
                                  fontSize: 24.sp,
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "/Person",
                                style: AppTextStyle.smallText.copyWith(
                                  color: AppColor.secondTextColor,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...",
                      style:
                          AppTextStyle.defaultStyle.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 22.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Preview",
                          style: AppTextStyle.defaultHeaderOne,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 30.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColor.bgColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  size: 18.sp,
                                  Icons.star,
                                  color: Color.fromARGB(255, 248, 229, 1),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "4.8",
                                  style: AppTextStyle.defaultStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          previewImage(image: "assets/images/rinjani-4.png"),
                          SizedBox(width: 12.w),
                          previewImage(image: "assets/images/rinjani-3.png"),
                          SizedBox(width: 12.w),
                          previewImage(image: "assets/images/rinjani-2.png"),
                          SizedBox(width: 12.w),
                          previewImage(image: "assets/images/rinjani-1.png"),
                          SizedBox(width: 12.w),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    Container(
                      height: 48.h,
                      width: 325.w,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Book Now",
                              style: AppTextStyle.defaultHeaderTwo
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 37.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.r),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
