import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/routing/app_routing.dart';
import 'package:task_app/core/routing/routes.dart';
import 'package:task_app/core/theming/colors.dart';

class RestaurantApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const RestaurantApp({super.key, required this.appRoutes});
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        navigatorKey: navKey,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whiteColor,
            ),
        title: "Restaurant",
        onGenerateRoute: appRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.bottomNavBar,
      ),
    );
  }
}
