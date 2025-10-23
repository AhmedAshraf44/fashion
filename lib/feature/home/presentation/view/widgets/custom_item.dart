import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../favorite/presentation/manger/favorite_cubit/favorite_cubit.dart';
import '../../../data/models/all_product_model/all_product_model.dart';
import '../../../../../core/utils/app_style.dart';

class CustomItem extends StatefulWidget {
  const CustomItem({super.key, required this.product});
  final AllProductModel product;
  @override
  State<CustomItem> createState() => _CustomItemState();
}

class _CustomItemState extends State<CustomItem> {
  bool iconColor = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(
              context,
            ).push(AppRouter.kDetailsView, extra: widget.product);
          },
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .26,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffF7F7F9),
                      child: IconButton(
                        onPressed: () {
                          context.read<FavoriteCubit>().addFavorite(
                            product: widget.product,
                          );
                          setState(() {
                            iconColor = !iconColor;
                          });
                        },
                        icon: iconColor
                            ? const Icon(Icons.favorite, color: Colors.red)
                            : const Icon(
                                Icons.favorite_border,
                                color: kBlackColor,
                              ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      left: 20,
                      right: 40,
                      top: 40,
                    ),
                    child: Image.network('${widget.product.image}'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          '${widget.product.title}',
          style: AppStyle.styleMedium16,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          r'$'
          '${widget.product.price}',
          style: AppStyle.styleMedium12,
        ),
      ],
    );
  }
}
