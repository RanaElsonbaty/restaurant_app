import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/recommend_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/recommend_widget.dart';

class YouMightAlsoLikeWidget extends StatelessWidget {
  const YouMightAlsoLikeWidget({super.key});

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
                    "you might also like...",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          SizedBox(
              height:170.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, index) {
                    return RecommendWidget(index: index,);
                  },
                  separatorBuilder: (c, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: recommend.length)
          ),
        ],
      ),
    );
  }
}
