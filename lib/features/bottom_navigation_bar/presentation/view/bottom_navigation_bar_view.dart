import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/icons.dart';
import 'package:task_app/features/bottom_navigation_bar/data/cubit/cubit.dart';
import 'package:task_app/features/bottom_navigation_bar/data/cubit/state.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<BottomNavBarCubit>(context);
    return BlocConsumer<BottomNavBarCubit, BottomNavBarStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.bottomNavIndex,
            onTap: (currentIndex) {
              debugPrint("Current index is : $currentIndex");
              cubit.changeBottomNavIndex(currentIndex: currentIndex);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.homeIcon,
                  color: cubit.bottomNavIndex == 0 ? AppColors.primaryColor : Colors.grey,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.searchIcon,
                  color: cubit.bottomNavIndex == 1 ? AppColors.primaryColor : Colors.grey,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.ordersIcon,
                  color: cubit.bottomNavIndex == 2 ? AppColors.primaryColor : Colors.grey,
                ),
                label: "Orders",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.accountIcon,
                  color: cubit.bottomNavIndex == 3 ? AppColors.primaryColor : Colors.grey,
                ),
                label: "Account",
              ),
            ],
          ),
          body: cubit.layoutScreens[cubit.bottomNavIndex],
        );
      },
    );
  }
}
