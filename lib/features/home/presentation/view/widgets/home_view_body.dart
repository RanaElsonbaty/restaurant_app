import 'package:flutter/material.dart';
import 'package:task_app/features/home/presentation/view/widgets/explore_dishes_horizontal_list.dart';
import 'package:task_app/features/home/presentation/view/widgets/free_delivery_container.dart';
import 'package:task_app/features/home/presentation/view/widgets/home_top_widget.dart';
import 'package:task_app/features/home/presentation/view/widgets/popular_horizontal_list.dart';
import 'package:task_app/features/home/presentation/view/widgets/quick_browse_horizontal_list.dart';
import 'package:task_app/features/home/presentation/view/widgets/restaurants_horizontal_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
            child:HomeTopWidget()
        ),
        SliverToBoxAdapter(
          child:ExploreDishesHorizontalList()
        ),
        SliverToBoxAdapter(
            child:QuickBrowseHorizontalList()
        ),
        SliverToBoxAdapter(
            child:RestaurantsHorizontalList()
        ),
        SliverToBoxAdapter(
            child:FreeDeliveryContainer()
        ),
        SliverToBoxAdapter(
            child:PopularHorizontalList()
        ),
      ],
    );
  }
}
