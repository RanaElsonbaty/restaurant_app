import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/explore_dishes_model.dart';

class ExploreDishesWidget extends StatelessWidget {
  const ExploreDishesWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: exploreDishes[index].color,
          ),
            child: Image.asset(exploreDishes[index].image)),
        SizedBox(height: 15.h,),
        Text(exploreDishes[index].title,
        style: TextStyles.font8Black400Weight,)
      ],
    );
  }
}
