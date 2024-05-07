import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../data/models/all_product_model/all_product_model.dart';

class CustomImageDetailsView extends StatefulWidget {
  const CustomImageDetailsView({super.key, required this.product});
  final AllProductModel product;
  @override
  State<CustomImageDetailsView> createState() => _CustomImageDetailsViewState();
}

class _CustomImageDetailsViewState extends State<CustomImageDetailsView> {
  bool iconColor = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kSecondaryColor,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 35, right: 35, top: 50, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 30,
                  shadowColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: kSecondaryColor,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: kBlackColor,
                        )),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 30,
                  shadowColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: kSecondaryColor,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.share_outlined,
                          color: kBlackColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 50),
            child: Image.network(
              widget.product.image ?? " ",
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * .33,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 30,
                  shadowColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: kSecondaryColor,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          iconColor = !iconColor;
                        });
                      },
                      icon: iconColor
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border,
                              color: kBlackColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
