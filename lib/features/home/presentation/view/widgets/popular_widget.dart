import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/core/theming/icons.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/popular_model.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(8.r),topRight: Radius.circular(8.r)),
                    child: Image.asset(popular[index].image)),
                SizedBox(height: 5.h,),
                Text(popular[index].title,
                  style: TextStyles.font12Black500Weight,),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.clockIcon),
                    SizedBox(width: 5.w,),
                    Text(popular[index].time,
                      style: TextStyles.font10Gray400Weight,),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
