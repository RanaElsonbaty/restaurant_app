import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/restaurants_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/restaurants_widget.dart';

class RestaurantsHorizontalList extends StatelessWidget {
  const RestaurantsHorizontalList({super.key});

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
                    "Restaurants you know",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          SizedBox(
              height:280.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, index) {
                    return RestaurantsWidget(index: index,);
                  },
                  separatorBuilder: (c, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: restaurants.length)
          ),
        ],
      ),
    );
  }
}
