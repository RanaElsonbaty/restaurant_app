import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/recommend_model.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key, required this.index});
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
                    child: Image.asset(recommend[index].image)),
                SizedBox(height: 5.h,),
                Text(recommend[index].title,
                  style: TextStyles.font10Black500Weight,),
                SizedBox(height: 3.h,),
                Text(recommend[index].price,
                  style: TextStyles.font12Black600Weight,)
              ],
            )),
      ],
    );
  }
}
