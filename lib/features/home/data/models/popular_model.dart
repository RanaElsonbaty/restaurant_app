import 'package:task_app/core/theming/images.dart';

class PopularModel {
  final String title;
  final String image ;
  final String time ;
  PopularModel(
      {
        required this.title,
        required this.image,
        required this.time,
      }
      );
}


List<PopularModel>  popular  = [
  PopularModel(image: AppImages.pizzaPopularImage, title: "pizza king", time: '36 mins'),
  PopularModel(image: AppImages.pizzaPopularImage, title: "pizza king", time: '36 mins'),
  PopularModel(image: AppImages.pizzaPopularImage, title: "pizza king", time: '36 mins'),
  PopularModel(image: AppImages.pizzaPopularImage, title: "pizza king", time: '36 mins'),
  PopularModel(image: AppImages.pizzaPopularImage, title: "pizza king", time: '36 mins'),
] ;