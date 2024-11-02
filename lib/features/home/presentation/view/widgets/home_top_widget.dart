import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/icons.dart';
import 'package:task_app/core/theming/styles.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:16.h,left: 16.w,right: 16.w,bottom: 30.h),
      color: AppColors.lightPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delivering to",
            style: TextStyles.font8Black400Weight,),
          Row(
            children: [
              Text("6th Of October, Giza",
                style: TextStyles.font12Black400Weight,),
              SizedBox(width: 10.w,),
              SvgPicture.asset(AppIcons.arrowDownIcon),
            ],
          ),
          SizedBox(height: 45.h,),
          Text("Hey there!",
            style: TextStyles.font14Black600Weight,),
          SizedBox(height: 7.h,),
          Text("Log in or create an account for a \nfaster ordering experience.",
            style: TextStyles.font10Black400Weight,),
          SizedBox(height: 20.h,),
          Container(
            padding: EdgeInsets.symmetric(vertical:8.sp,horizontal: 18.sp),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(4.r)
            ),
            child: Text("Sign up",style: TextStyles.font10White400Weight,),
          )
        ],
      ),
    );
  }
}
