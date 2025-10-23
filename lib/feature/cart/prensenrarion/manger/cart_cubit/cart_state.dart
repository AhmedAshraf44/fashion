import '../../../data/models/cart_model.dart';

abstract class CartState {
  const CartState();
}

final class CartInitial extends CartState {}

final class CartUpdated extends CartState {
  final List<CartModel> cartList;
  const CartUpdated({required this.cartList});
}
