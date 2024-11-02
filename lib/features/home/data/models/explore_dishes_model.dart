import 'dart:ui';
import 'package:task_app/core/theming/colors.dart';
import 'package:task_app/core/theming/images.dart';

class ExploreDishesModel {
  final String title;
  final String image ;
  final Color color ;
  ExploreDishesModel(
      {
        required this.title,
        required this.image,
        required this.color
      }
      );
}


List<ExploreDishesModel>  exploreDishes  = [
  ExploreDishesModel(image: AppImages.ramenImage, title: "Noodles", color: AppColors.lightRedColor),
  ExploreDishesModel(image: AppImages.chickenImage, title: "Grilled chicken", color: AppColors.lightPrimaryColor),
  ExploreDishesModel(image: AppImages.spaghettiImage, title: "Pasta", color: AppColors.lightPrimaryColor),
  ExploreDishesModel(image: AppImages.sushiImage, title: "Sushi", color: AppColors.lightPrimaryColor),
  ExploreDishesModel(image: AppImages.saladImage, title: "Salads", color: AppColors.lightPrimaryColor),
] ;