import 'package:dartz/dartz.dart';
import 'package:fason_app/core/errors/failure.dart';

import '../models/all_product_model/all_product_model.dart';

abstract class HomeRepo 
{
Future<Either<Failure,List<AllProductModel>>> getAllProduct();
}