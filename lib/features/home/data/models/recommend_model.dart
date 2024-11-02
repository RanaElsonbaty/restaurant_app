import 'package:task_app/core/theming/images.dart';

class RecommendModel {
  final String title;
  final String image ;
  final String price ;
  RecommendModel(
      {
        required this.title,
        required this.image,
        required this.price,
      }
      );
}


List<RecommendModel>  recommend  = [
  RecommendModel(image: AppImages.pizzaPopularImage, title: "pizza king", price: 'egp 5.00'),
  RecommendModel(image: AppImages.pizzaPopularImage, title: "pizza king", price: 'egp 5.00'),
  RecommendModel(image: AppImages.pizzaPopularImage, title: "pizza king", price: 'egp 5.00'),
  RecommendModel(image: AppImages.pizzaPopularImage, title: "pizza king", price: 'egp 5.00'),
  RecommendModel(image: AppImages.pizzaPopularImage, title: "pizza king", price: 'egp 5.00'),
] ;