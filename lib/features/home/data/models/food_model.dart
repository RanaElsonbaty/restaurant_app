import 'package:task_app/core/theming/images.dart';

class FoodModel {
  final String title;
  final String name;
  final String image ;
  final double price ;
  int count    ;

  FoodModel(
      {
        required this.title,
        required this.name,
        required this.image,
        required this.price,
        this.count = 0,
      }
      );
}


List<FoodModel>  appetizers  = [
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price:  22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
] ;

List<FoodModel>  cheeseManakish  = [
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
] ;

List<FoodModel>  pizza  = [
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
  FoodModel(image: AppImages.restaurantDetailsImage, title: "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.", price: 22.00, name: 'Pizza King'),
] ;

List<FoodModel>  orders =[];