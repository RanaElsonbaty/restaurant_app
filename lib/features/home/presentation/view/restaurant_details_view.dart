import 'package:flutter/material.dart';
import 'package:task_app/features/home/presentation/view/widgets/restaurant_details_view_body.dart';

class RestaurantDetailsView extends StatelessWidget {
  const RestaurantDetailsView({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RestaurantDetailsViewBody(index: index,),
    );
  }
}
