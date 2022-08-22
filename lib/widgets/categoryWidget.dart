import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';
import '../constants/textstyles.dart';

class CategoryWidget extends StatelessWidget {
  final String gambar;
  final String judul;

  CategoryWidget({required this.gambar, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: AppColor.bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 9.h),
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(gambar, fit: BoxFit.cover, height: 20.h),
              SizedBox(
                width: 6.w,
              ),
              Text(
                judul,
                style: AppTextStyle.category,
              )
            ],
          ),
        ));
  }
}
