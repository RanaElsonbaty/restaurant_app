import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';

class FreeDeliveryContainer extends StatelessWidget {
  const FreeDeliveryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.only(top:10.w,bottom:10.h,right: 20.w,left: 35.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(4.r)
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Free delivery, on us",style: TextStyles.font12White600Weight,),
              SizedBox(height: 5.h,),
              Text("A gift for your first order",style: TextStyles.font8White500Weight)
            ],
          ),
          const Spacer(),
          Text("Order now",style: TextStyles.font10White600Weight)
        ],
      ),
    );
  }
}
