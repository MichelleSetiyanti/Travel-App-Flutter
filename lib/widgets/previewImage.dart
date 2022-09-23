import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviewImage extends StatelessWidget {
  PreviewImage({required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
