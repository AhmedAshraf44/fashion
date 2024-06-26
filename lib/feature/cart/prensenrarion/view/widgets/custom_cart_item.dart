import 'package:fason_app/feature/cart/data/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_style.dart';
import '../../manger/cart_cubit/cart_cubit.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key,
    required this.item,
    required this.index,
  });
  final CartModel item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kViolateColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: 135,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network('${item.product.image}')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 220,
                    child: Text(
                      '${item.product.title}',
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: AppStyle.styleMedium18,
                    ),
                  ),
                  Text(
                    r'$' '${item.product.price}',
                    style: AppStyle.styleMedium14,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  SizedBox(
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: AppStyle.styleMedium14.copyWith(
                                  color: kSecondaryColor.withOpacity(.8)),
                            ),
                            Text(
                              '',
                              style: AppStyle.styleMedium14.copyWith(
                                  color: kSecondaryColor.withOpacity(.8)),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            context
                                .read<CartCubit>()
                                .removeCart(index: index);
                          },
                          icon: SvgPicture.asset(Assets.imagesTrash),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
