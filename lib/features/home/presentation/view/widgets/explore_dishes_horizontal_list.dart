import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/explore_dishes_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/explore_dishes_widget.dart';

class ExploreDishesHorizontalList extends StatelessWidget {
  const ExploreDishesHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal:16.sp),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.h,top: 40.h),
            child: Row(
              children: [
                Text(
                    "Explore Dishes",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          SizedBox(
              height:145.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, index) {
                    return ExploreDishesWidget(index: index,);
                  },
                  separatorBuilder: (c, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: exploreDishes.length)
          ),
        ],
      ),
    );
  }
}
