
import '../../../data/models/all_product_model/all_product_model.dart';

abstract class LatestState{}
final class LatestInitial extends LatestState {}
final class LatestLoading extends LatestState {}
final class LatestFailure extends LatestState {
  final String errMessage;

  LatestFailure(this.errMessage);
}
final class LatestSuccess extends LatestState {
final List<AllProductModel>product;

  LatestSuccess({required this.product});

}