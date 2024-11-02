import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/account/presentation/view/account_view.dart';
import 'package:task_app/features/bottom_navigation_bar/data/cubit/state.dart';
import 'package:task_app/features/home/presentation/view/home_view.dart';
import 'package:task_app/features/orders/presentation/view/orders_view.dart';
import 'package:task_app/features/search/presentation/view/search_view.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarStates> {
  BottomNavBarCubit() : super(LayoutInitialState());

  int bottomNavIndex = 0;

  void changeBottomNavIndex({required int currentIndex}) {
    bottomNavIndex = currentIndex;
    emit(ChangeBottomNavigationIndexState());
  }

  List<Widget> layoutScreens = [
    const HomeView(),
    const SearchView(),
    const OrdersView(),
    const AccountView(),
  ];
}