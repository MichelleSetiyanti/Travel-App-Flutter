import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_color.dart';
import '../constants/textstyles.dart';

class JudulWidget extends StatelessWidget {
  // const judulWidget({
  //   Key? key,
  // }) : super(key: key);
  final String judul;
  JudulWidget({
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          judul,
          style: AppTextStyle.defaultHeaderOne,
        ),
        Spacer(),
        Text("View All", style: AppTextStyle.defaultStyleMedium),
        SizedBox(
          width: 4.w,
        ),
        Icon(
          Icons.arrow_forward,
          color: AppColor.primaryColor,
          size: 12,
        )
      ],
    );
  }
}
