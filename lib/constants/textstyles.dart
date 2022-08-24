import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './app_color.dart';

class FontFamily {
  static const String primary = 'Gilroy';
}

class AppTextStyle {
  static TextStyle get defaultHeaderOne => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        fontFamily: FontFamily.primary,
        color: AppColor.textColor,
        // height: 1.3,
      );

  static TextStyle get defaultStyle => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.secondTextColor,
        fontFamily: FontFamily.primary,
        // color: AppColor.secondTextColor,
        // height: 1.6,
      );
  static TextStyle get defaultStyleMedium => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.primaryColor,
        fontFamily: FontFamily.primary,
        // color: AppColor.secondTextColor,
        // height: 1.6,
      );

  static TextStyle get defaultHeaderTwo => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        fontFamily: FontFamily.primary,
        color: AppColor.textColor,
        // height: 1.6,
      );

  static TextStyle get defaultHeaderThree => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        fontFamily: FontFamily.primary,
        color: AppColor.textColor,
        // height: 1.6,
      );
  static TextStyle get smallText => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.primary,
        color: AppColor.primaryColor,
        // height: 1.6,
      );
  static TextStyle get desc => TextStyle(
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamily.primary,
        color: AppColor.secondTextColor,
        // height: 1.6,
      );
  static TextStyle get loca => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.primary,
        color: AppColor.textColor,
        // height: 1.6,
      );
  static TextStyle get loca2 => TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.primary,
      color: AppColor.thirdTextColor
      // height: 1.6,
      );
  static TextStyle get category => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.primary,
        color: AppColor.secondTextColor,
        // height: 1.6,
      );
}
