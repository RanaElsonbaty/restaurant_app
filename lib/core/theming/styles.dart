import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/core/theming/colors.dart';

class TextStyles {

  // black
  static final font8Black400Weight =GoogleFonts.inter(
      textStyle: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w400,
          fontSize:8.sp,
      )
  );
  static final font10Black400Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w400,
        fontSize:10.sp,
      )
  );

  static final font12Black400Weight =GoogleFonts.inter(
      textStyle: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w400,
          fontSize:12.sp,
      )
  );


  static final font10Black500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize:10.sp,
      )
  );

  static final font12Black500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize:12.sp,
      )
  );
  static final font12Black600Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
        fontSize:12.sp,
      )
  );

  static final font16Black500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize:16.sp,
      )
  );

  static final font14Black600Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
        fontSize:14.sp,
      )
  );

  static final font14Black500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.lightBlackColor,
        fontWeight: FontWeight.w500,
        fontSize:14.sp,
      )
  );

// white
  static final font10White400Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w400,
        fontSize:10.sp,
      )
  );

  static final font14White500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize:14.sp,
      )
  );

  static final font8White500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize:8.sp,
      )
  );

  static final font10White600Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize:10.sp,
      )
  );

  static final font12White600Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize:12.sp,
      )
  );


  // gray
  static final font10Gray400Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.lightBlackColor,
        fontWeight: FontWeight.w400,
        fontSize:10.sp,
      )
  );

  static final font10Gray500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.lightBlackColor,
        fontWeight: FontWeight.w500,
        fontSize:10.sp,
      )
  );

  static final font12Gray500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.lightBlackColor,
        fontWeight: FontWeight.w500,
        fontSize:12.sp,
      )
  );

  static final font10Gray600Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.blackColor.withOpacity(.8),
        fontWeight: FontWeight.w600,
        fontSize:10.sp,
      )
  );

  // primary

  static final font12Primary500Weight =GoogleFonts.inter(
      textStyle: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize:12.sp,
      )
  );
}
