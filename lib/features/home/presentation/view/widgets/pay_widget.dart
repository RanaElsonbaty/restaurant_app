import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';

class PayWidget extends StatelessWidget {
  const PayWidget({super.key});

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
                    "Payment Summary",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text("subtotal",style: TextStyles.font10Black500Weight),
              const Spacer(),
              Text("egp 146.00",style: TextStyles.font10Black500Weight)
            ],
          ),
          Row(
            children: [
              Text("free delivery",style: TextStyles.font10Black500Weight),
              const Spacer(),
              Text("egp 15.00",style: TextStyles.font10Black500Weight)
            ],
          ),
          Row(
            children: [
              Text("service in",style: TextStyles.font10Black500Weight,),
              const Spacer(),
              Text("egp 7.30",style: TextStyles.font10Black500Weight)
            ],
          ),
          Row(
            children: [
              Text("total amount",style: TextStyles.font10Black500Weight),
              const Spacer(),
              Text("egp 153.30",style: TextStyles.font10Black500Weight)
            ],
          )
        ],
      ),
    );
  }
}
