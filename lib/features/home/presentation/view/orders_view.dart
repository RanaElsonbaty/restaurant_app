import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/styles.dart';
import 'package:task_app/features/home/data/models/food_model.dart';
import 'package:task_app/features/home/presentation/view/widgets/buttons.dart';
import 'package:task_app/features/home/presentation/view/widgets/order_list.dart';
import 'package:task_app/features/home/presentation/view/widgets/pay_widget.dart';
import 'package:task_app/features/home/presentation/view/widgets/save_order_widget.dart';
import 'package:task_app/features/home/presentation/view/widgets/you_might_also_like_widget_List.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: AppColors.whiteColor,
              title: Column(
                children: [
                  Text("Basket",style: TextStyles.font12Black500Weight,),
                  Text("Pizza King",style: TextStyles.font10Gray400Weight,)
                ],
              ),
          ),
          SliverList.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 5.h),
                child: OrderList(index: index,onPressed: (){
                  setState(() {
                    orders.removeAt(index);
                  });
                },),
              );
            },
            itemCount: orders.length,),
          const SliverToBoxAdapter(
            child: YouMightAlsoLikeWidget(),
          ),
          const SliverToBoxAdapter(
            child: SaveOrderWidget(),
          ),
          const SliverToBoxAdapter(
            child: PayWidget(),
          ),
          const SliverToBoxAdapter(
            child: Buttons(),
          )
        ],
      ),
    );
  }
}
