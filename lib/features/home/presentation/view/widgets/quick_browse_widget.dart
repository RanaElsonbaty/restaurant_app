import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/quick_browse_model.dart';

class QuickBrowseWidget extends StatelessWidget {
  const QuickBrowseWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical:25.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: quickBrowse[index].color,
            ),
            child: Padding(
              padding: EdgeInsets.only(right:55.w,left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(quickBrowse[index].image),
                  SizedBox(height:12.h,),
                  Text(quickBrowse[index].title,
                    style: TextStyles.font12Black500Weight,)
                ],
              ),
            )),
      ],
    );
  }
}
