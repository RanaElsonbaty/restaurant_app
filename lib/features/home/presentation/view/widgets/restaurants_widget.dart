import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/images.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/restaurants_model.dart';
import 'package:task_app/features/home/presentation/view/restaurant_details_view.dart';

class RestaurantsWidget extends StatelessWidget {
  const RestaurantsWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> RestaurantDetailsView(index: index,)));
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(8.r),topRight: Radius.circular(8.r)),
                  child: Image.asset(restaurants[index].image)),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.only(left:7.w),
                child: Text(restaurants[index].name,
                  style: TextStyles.font12Black500Weight,),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.only(left:7.w),
                child: Text(restaurants[index].title,
                  style: TextStyles.font8Black400Weight,),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.only(left:7.w),
                child: Row(
                  children: [
                    Image.asset(AppImages.starRateImage),
                    SizedBox(width: 3.w,),
                    Text(restaurants[index].rate,
                      style: TextStyles.font10Black400Weight,),
                    Text(restaurants[index].number,
                      style: TextStyles.font10Gray400Weight,),

                  ],
                ),
              )
            ],
          )),
    );
  }
}
