import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/images.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/restaurants_model.dart';

class RestaurantDetailsTopWidget extends StatelessWidget {
  const RestaurantDetailsTopWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.only(top:12.w,bottom:12.h,right: 4.w,left: 4.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightBlackColor.withOpacity(.1)),
          borderRadius: BorderRadius.circular(8.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             Image.asset(AppImages.restaurantDetailsImage,height: 70.h,width: 70.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurants[index].name,
                    style: TextStyles.font16Black500Weight,),
                  SizedBox(height: 5.h,),
                  Text(restaurants[index].title,
                    style: TextStyles.font8Black400Weight,),
                  SizedBox(height: 5.h,),
                  Row(
                    children: [
                      Image.asset(AppImages.starRateImage),
                      SizedBox(width: 3.w,),
                      Text(restaurants[index].rate,
                        style: TextStyles.font10Black400Weight,),
                      Text(restaurants[index].number,
                        style: TextStyles.font10Gray400Weight,),

                    ],
                  )
                ],
              )
            ],
          ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Column(
                children: [
                  Text("Delivery In",style: TextStyles.font10Gray500Weight,),
                  Text("Free",style: TextStyles.font10Gray600Weight,)
                ],
              ),
              Container(height: 35.h,width: 1.w,color: AppColors.lightBlackColor.withOpacity(.13),),
              Column(
                children: [
                  Text("Delivery Time",style: TextStyles.font10Gray500Weight,),
                  Text("36 mins",style: TextStyles.font10Gray600Weight,)
                ],
              ),
              Container(height: 35.h,width: 1.w,color: AppColors.lightBlackColor.withOpacity(.13),),
              Column(
                children: [
                  Text("Delivered By",style: TextStyles.font10Gray500Weight,),
                  Text("Free",style: TextStyles.font10Gray600Weight,)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
