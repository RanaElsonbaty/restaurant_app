import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:16.w,vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.sp,horizontal: 35.sp),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(6.r)
            ),
            child: Center(child: Text("Add Items",style: TextStyles.font12Primary500Weight,)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13.sp,horizontal: 40.sp),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(6.r)
            ),
            child: Center(child: Text("checkout",style: TextStyles.font12White600Weight,)),
          )
        ],

      ),
    );
  }
}
