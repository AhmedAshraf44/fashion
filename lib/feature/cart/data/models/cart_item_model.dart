import 'package:hive/hive.dart';

import '../../../home/data/models/all_product_model/all_product_model.dart';

part 'cart_item_model.g.dart';

@HiveType(typeId: 0)
class CartItemMoel extends HiveObject {
  @HiveField(0)
  List<AllProductModel> item;
  CartItemMoel({required this.item});
}
