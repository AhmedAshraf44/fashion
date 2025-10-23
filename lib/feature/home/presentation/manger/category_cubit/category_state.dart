
import '../../../data/models/all_product_model/all_product_model.dart';

abstract class CategoryState{}
final class CategoryInitial extends CategoryState {}
final class CategoryLoading extends CategoryState {}
final class CategoryFailure extends CategoryState {
  final String errMessage;

  CategoryFailure(this.errMessage);
}
final class CategorySuccess extends CategoryState {
final List<AllProductModel>product;

  CategorySuccess({required this.product});

}