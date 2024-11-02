import 'dart:ui';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/images.dart';

class QuickBrowseModel {
  final String title;
  final String image ;
  final Color color ;
  QuickBrowseModel(
      {
        required this.title,
        required this.image,
        required this.color
      }
      );
}


List<QuickBrowseModel>  quickBrowse  = [
  QuickBrowseModel(image: AppImages.discountImage, title: "Food Offers", color: AppColors.lightRedColor),
  QuickBrowseModel(image: AppImages.starImage, title: "Top-Rated", color: AppColors.lightYellowColor),
  QuickBrowseModel(image: AppImages.locationImage, title: "Live Tracking", color: AppColors.lightRedColor),
] ;