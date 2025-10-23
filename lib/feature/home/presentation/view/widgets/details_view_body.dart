import 'package:app_task/feature/home/presentation/view/widgets/custom_button.dart';
import 'package:app_task/feature/home/presentation/view/widgets/custom_counter_details.dart';
import 'package:app_task/feature/home/presentation/view/widgets/custom_details_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../cart/prensenrarion/manger/cart_cubit/cart_cubit.dart';
import '../../../data/models/all_product_model/all_product_model.dart';

import 'custom_image_details_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.product});
  final AllProductModel product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageDetailsView(product: product),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title ?? '', style: AppStyle.styleMedium20),
                Text(
                  product.category ?? '',
                  style: AppStyle.styleMedium12.copyWith(color: kBorderColor),
                ),
                const SizedBox(height: 10),
                Text(
                  r'$' + product.price.toString(),
                  style: AppStyle.styleMedium16,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset(Assets.imagesRatings),
                    const SizedBox(width: 10),
                    Text(
                      '(${product.rating!.rate.toString()})',
                      style: AppStyle.styleMedium12,
                    ),
                    const SizedBox(width: 10),
                    const Text('See Reviews', style: AppStyle.styleMedium12),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Select Quantity', style: AppStyle.styleMedium14),
                const CustomCounterDetails(),
                const SizedBox(height: 10),
                const Text('Select Color:', style: AppStyle.styleMedium14),
                const Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.red, radius: 8),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Color(0xff0094FF), radius: 8),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Color(0xffFAFF00), radius: 8),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Color(0xffFF8A8A), radius: 8),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: kSecondaryColor, radius: 8),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    CustomButton(
                      onPressed: () {
                        // Add to cart
                        context.read<CartCubit>().addCart(product: product);
                        // GoRouter.of(context).push(AppRouter.kCartView);
                      },
                      title: 'Add to cart',
                      image: Assets.imagesCart,
                      textColor: kSecondaryColor,
                      backgroundButton: kPrimaryColor,
                    ),
                    const SizedBox(width: 10),
                    const CustomButton(
                      title: 'Buy now',
                      image: Assets.imagesBag,
                      textColor: kBlackColor,
                      backgroundButton: kSecondaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                CustomDetailsProduct(
                  title: 'Specifications',
                  product: product.description ?? '',
                ),
                const SizedBox(height: 10),
                CustomDetailsProduct(
                  title: 'Product counter',
                  product: product.rating!.count.toString(),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
