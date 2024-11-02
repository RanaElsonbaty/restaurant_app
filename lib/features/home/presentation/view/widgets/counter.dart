import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return orders.isEmpty
        ? Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          Text(
            "Add EGP 20.00 to start your order",
            style: TextStyles.font12Gray500Weight,
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.only(top: 10.w, bottom: 10.h, right: 20.w, left: 35.w),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              children: [
                Text("0", style: TextStyles.font8White500Weight),
                SizedBox(width: 10.w),
                Text("view basket", style: TextStyles.font10White600Weight),
              ],
            ),
          ),
        ],
      ),
    )
        : Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding: EdgeInsets.only(top: 10.w, bottom: 10.h, right: 20.w, left: 35.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: [
          Text("1", style: TextStyles.font8White500Weight),
          SizedBox(width: 10.w),
          Text("view basket", style: TextStyles.font10White600Weight),
          const Spacer(),
          Text("EGP 22.00", style: TextStyles.font10White600Weight),
        ],
      ),
    );
  }
}
