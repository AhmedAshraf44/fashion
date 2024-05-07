import '../../../../core/utils/app_images.dart';
import '../../data/models/profile_model.dart';

class ProfileViewModel {
   final List<ProfileModel> item = [
    ProfileModel(
        title: 'My Orders',
        image: Assets.imagesBoxArchive,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'My Wishlist',
        image: Assets.imagesHeart,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'Shipping Address',
        image: Assets.imagesLocationDot,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'Payment Method',
        image: Assets.imagesCreditCard,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'Reviews',
        image: Assets.imagesStar,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'Help',
        image: Assets.imagesLifeRing,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'About',
        image: Assets.imagesInfoCircle,
        trailingImage: Assets.imagesChevronDown),
    ProfileModel(
        title: 'Settings',
        image: Assets.imagesGear,
        trailingImage: Assets.imagesChevronDown),
  ];
}