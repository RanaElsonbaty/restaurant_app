import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';
import 'package:task_app/features/home/presentation/view/orders_view.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key, required this.name, required this.title, required this.price, required this.image, required this.index, required this.count, });
  final String name;
  final String image;
  final String title;
  final double price;
  final int index;
  final int count;

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(16.r),topLeft: Radius.circular(16.r)),
            child: SizedBox(
              width: double.infinity,
                height: 350.h,
                child: Image.asset(widget.image,fit: BoxFit.cover,)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w,top: 16.h,bottom: 5.h),
            child: Text(widget.name, style: TextStyles.font12Black500Weight),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w,bottom: 30.h),
            child: SizedBox(
              width: 250.w,
              child: Text(widget.title,
                style: TextStyles.font8Black400Weight,
                maxLines: 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("EGP ", style: TextStyles.font12Black500Weight),
                    Text("${widget.price}", style: TextStyles.font12Black500Weight),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: ( ) {

                    if(pizza[widget.index].count >0 ) {
                      setState(() {
                        pizza[widget.index].count = pizza[widget.index].count - 1  ;
                      });
                    }
                  },
                  child:  Container(
                    height: 25,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightBlackColor.withOpacity(.1)),
                      borderRadius: BorderRadius.circular(50.r)
                    ),
                    child: Icon(Icons.remove,
                      size: 20,
                      color:AppColors.lightBlackColor.withOpacity(.6),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),

                Text("${pizza[widget.index].count}"),
                const SizedBox(width: 15,),
                GestureDetector(
                  onTap: ( ) {
                    setState(() {
                      pizza[widget.index].count = pizza[widget.index].count + 1  ;
                    });
                  },
                  child:   Container(
                    height: 25,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                      color: AppColors.primaryColor
                    ),
                    child: const Icon(Icons.add,
                      size: 20,
                      color:AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                orders.add(pizza[widget.index]);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrdersView()));
                print(orders.length);
              });
             },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 18.h),
              padding: EdgeInsets.only(top:10.w,bottom:10.h,right: 20.w,left: 20.w),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(6.r)
              ),
              child: Row(
                children: [
                  Text("Add To Basket",style: TextStyles.font14White500Weight,),
                  const Spacer(),
                  Text("EGP",style: TextStyles.font14White500Weight),
                  SizedBox(width: 10.w,),
                  Text("${pizza[widget.index].count *pizza[widget.index].price }",style: TextStyles.font14White500Weight)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
