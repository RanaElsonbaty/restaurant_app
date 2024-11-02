import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/bottom_sheet_widget.dart';

Widget buildSection(String title, List<FoodModel> items,BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 16.w, top: 10.h, bottom: 5.h),
        child: Row(
          children: [
            Text(title, style: TextStyles.font14Black600Weight),
          ],
        ),
      ),
      Column(
        children: List.generate(items.length, (index) {
          return GestureDetector(
            onTap: (){
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return BottomSheetWidget(name: items[index].name, title: items[index].title, price: items[index].price, image: items[index].image, index:index, count: items[index].count,);
                },
              );
            },
            child: Container(
              margin: EdgeInsets.all(16.r),
              height: 130.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: AppColors.lightBlackColor.withOpacity(.1))),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(items[index].name, style: TextStyles.font12Black500Weight),
                        SizedBox(
                          width: 250.w,
                          child: Text(
                            items[index].title,
                            style: TextStyles.font8Black400Weight,
                            maxLines: 2,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text("EGP ", style: TextStyles.font12Black500Weight),
                            Text("${items[index].price}", style: TextStyles.font12Black500Weight),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(items[index].image, height: 100.h, width: 90.w),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
      Divider(thickness: 7, color: AppColors.lightBlackColor.withOpacity(.1)),
    ],
  );
}
