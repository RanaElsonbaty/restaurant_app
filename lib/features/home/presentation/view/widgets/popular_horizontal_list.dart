import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/popular_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/popular_widget.dart';

class PopularHorizontalList extends StatelessWidget {
  const PopularHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:16.sp),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.h,top: 25.h),
            child: Row(
              children: [
                Text(
                    "popular today",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          SizedBox(
              height:300.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, index) {
                    return PopularWidget(index: index,);
                  },
                  separatorBuilder: (c, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: popular.length)
          ),
        ],
      ),
    );
  }
}
