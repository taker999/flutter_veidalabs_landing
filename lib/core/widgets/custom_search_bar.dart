import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_veidalabs_landing/core/constants/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 10.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.textTertiary, fontSize: 16.sp),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.iconSearch,
            size: 24.sp,
          ),
          suffixIcon: Transform.rotate(
            angle: -45 * pi / 180,
            child: Icon(Icons.send, color: AppColors.iconSend, size: 25.sp),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
        ),
      ),
    );
  }
}
