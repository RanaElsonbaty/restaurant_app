import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/quick_browse_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/quick_browse_widget.dart';

class QuickBrowseHorizontalList extends StatelessWidget {
  const QuickBrowseHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal:16.sp),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Row(
              children: [
                Text(
                    "Quick Browse",
                    style: TextStyles.font14Black600Weight
                ),
              ],
            ),
          ),
          SizedBox(
              height:120.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, index) {
                    return QuickBrowseWidget(index: index,);
                  },
                  separatorBuilder: (c, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: quickBrowse.length)
          ),
        ],
      ),
    );
  }
}
