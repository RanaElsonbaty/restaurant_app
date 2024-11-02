import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key, required this.index, this.onPressed});
  final int index;
  final  void Function()? onPressed;
  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(orders[widget.index].name,style: TextStyles.font14Black600Weight,),
                  Text("Closed",style: TextStyles.font12Gray500Weight),
                  Row(
                    children: [
                      const Icon(Icons.edit,color: AppColors.primaryColor,size: 15,),
                      Text("Edit",style: TextStyles.font12Primary500Weight),
                    ],
                  ),
                  Row(
                    children: [
                      Text("EGP ",style: TextStyles.font10Gray400Weight),
                      Text("${orders[widget.index].count *orders[widget.index].price }",style: TextStyles.font12Black600Weight)
                    ],
                  )
                ],
              ),
              const Spacer(),
              Image.asset(orders[widget.index].image,height: 70.h,width: 70.w,),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(6.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: widget.onPressed, icon: const Icon(Icons.delete_outlined,size: 15,color: AppColors.whiteColor,)),
                SizedBox(width: 10.w,),
                Text("${orders[widget.index].count}",style: TextStyles.font14White500Weight),
                SizedBox(width: 10.w,),
                IconButton(onPressed: (){
                  setState(() {
                    pizza[widget.index].count = pizza[widget.index].count + 1  ;
                  });
                }, icon: const Icon(Icons.add,size: 15,color: AppColors.whiteColor,)),

              ],
            ),
          ),
        ],
      )
    );
  }
}
