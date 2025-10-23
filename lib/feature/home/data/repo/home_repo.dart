import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/all_product_model/all_product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllProductModel>>> getAllProduct();
  Future<Either<Failure, List<AllProductModel>>> getCategories({
    required String endPoint,
  });
}
