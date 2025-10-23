import '../../../../core/utils/app_images.dart';
import '../../data/models/slider_model.dart';

class SliderViewModel {

  final List<SliderModel> categoryList = [
    SliderModel(image: Assets.imagesMenClothes, tittle: "men's clothing"),
    SliderModel(image: Assets.imagesWomenClothes, tittle: 'women\'s clothing'),
    SliderModel(image: Assets.imagesJewelery, tittle: 'jewelery'),
    SliderModel(image: Assets.imagesElectronics, tittle: 'electronics'),
  ];


    final List<SliderModel> sliderList = [
    SliderModel(image: Assets.imagesSlider1, tittle: 'Wear the real Fashion'),
    SliderModel(image: Assets.imagesSlider2, tittle: 'Fashion made for you !'),
    SliderModel(image: Assets.imagesSlider3, tittle: 'Find your perfect fits '),
  ];
}