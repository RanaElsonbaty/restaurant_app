import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/routing/app_routing.dart';
import 'package:task_app/features/bottom_navigation_bar/data/cubit/cubit.dart';
import 'package:task_app/restaurant_app.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>BottomNavBarCubit()),
      ],
  child: RestaurantApp(appRoutes: AppRoutes(),)));
}
