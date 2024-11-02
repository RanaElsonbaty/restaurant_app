import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/images.dart';
import 'package:task_app/core/theming/styles.dart';

class SaveOrderWidget extends StatelessWidget {
  const SaveOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:16.sp),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.h,top: 16.h),
            child: Row(
              children: [
                Text(
                    "save on your order",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:10.w,bottom:10.h,right: 20.w,left: 20.w),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightBlackColor.withOpacity(.1)),
                borderRadius: BorderRadius.circular(6.r)
            ),
            child: Row(
              children: [
                Image.asset(AppImages.saveImage),
                SizedBox(width: 10.w,),
                Text("Enter voucher code",style: TextStyles.font14Black500Weight,),
                const Spacer(),
                Text("Submit",style: TextStyles.font12Primary500Weight),
              ],
            ),
          )
        ],
      ),
    );
  }
}
