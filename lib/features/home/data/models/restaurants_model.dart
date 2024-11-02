import 'package:task_app/core/theming/images.dart';

class RestaurantsModel {
  final String title;
  final String name;
  final String image ;
  final String rate ;
  final String number ;
  RestaurantsModel(
      {
        required this.title,
        required this.name,
        required this.rate,
        required this.number,
        required this.image,
      }
      );
}


List<RestaurantsModel>  restaurants = [
  RestaurantsModel(image: AppImages.pizzaImage, title: "Pizza, Pasta", name: 'Pizza king', rate: '4.5', number: '(100+)'),
  RestaurantsModel(image: AppImages.pizzaImage, title: "Pizza, Pasta", name: 'Pizza king', rate: '4.5', number: '(100+)'),
  RestaurantsModel(image: AppImages.pizzaImage, title: "Pizza, Pasta", name: 'Pizza king', rate: '4.5', number: '(100+)'),
  RestaurantsModel(image: AppImages.pizzaImage, title: "Pizza, Pasta", name: 'Pizza king', rate: '4.5', number: '(100+)'),
  RestaurantsModel(image: AppImages.pizzaImage, title: "Pizza, Pasta", name: 'Pizza king', rate: '4.5', number: '(100+)'),
] ;