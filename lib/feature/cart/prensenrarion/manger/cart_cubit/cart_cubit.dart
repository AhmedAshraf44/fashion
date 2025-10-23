import 'package:app_task/feature/cart/prensenrarion/manger/cart_cubit/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/data/models/all_product_model/all_product_model.dart';
import '../../../data/models/cart_model.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  List<CartModel> cartList = [];

  void addCart({required AllProductModel product}) {
    // var addNotes = Hive.box<ProductModel>(kProductBox);
    //  // await addNotes.add(notes);
    cartList.add(CartModel(product: product));
    //  log('${cartList[0].product}');
    //  log('lenght cartList :${cartList.length}');
    emit(CartUpdated(cartList: cartList));
  }

  void removeCart({required int index}) {
    cartList.removeAt(index);
    if (cartList.isEmpty) {
      emit(CartInitial());
    } else {
      // log('lenght cartList :${favoriteList.length}');
      emit(CartUpdated(cartList: cartList));
    }
  }
}
