import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_color.dart';
import '../constants/textstyles.dart';

class CategoryItem extends StatelessWidget {
  final String judul;
  final String tempat;
  final String harga;
  final String gambar;
  final String pages;

  CategoryItem({
    required this.judul,
    required this.tempat,
    required this.harga,
    required this.gambar,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: 222.w,
          height: 143.h,
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(13.r),
            child: InkWell(
              onTap: () {
                Get.toNamed(pages);
              },
              splashColor: Color.fromARGB(255, 245, 242, 242),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 235, 235),
            borderRadius: BorderRadius.circular(13.r),
            image: DecorationImage(
              image: AssetImage(gambar),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          // height: 52.h,
          width: 222.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(13.r),
              bottomRight: Radius.circular(13.r),
            ),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.only(
                right: 14.w, left: 14.w, top: 6.h, bottom: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment:
                  //     MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style: AppTextStyle.defaultHeaderThree.copyWith(
                        color: AppColor.thirdTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColor.thirdTextColor,
                          size: 10.r,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          tempat,
                          style: AppTextStyle.loca2,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$ $harga",
                      style: AppTextStyle.defaultHeaderThree.copyWith(
                        color: AppColor.thirdTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "/person",
                          style: AppTextStyle.loca2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // child: Text("Halo"),
      ],
    );
  }
}
