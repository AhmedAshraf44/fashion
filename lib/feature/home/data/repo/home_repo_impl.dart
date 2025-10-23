import 'package:app_task/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';
import '../models/all_product_model/all_product_model.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<AllProductModel>>> getAllProduct() async {
    try {
      var data = await apiService.get(endPoint: 'products');
      // log('true data :$data');
      List<AllProductModel> productsList = [];

      for (int i = 0; i < data.length; i++) {
        productsList.add(AllProductModel.fromJson(data[i]));
      }
      return right(productsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel>>> getCategories({
    required String endPoint,
  }) async {
    try {
      var data = await apiService.get(endPoint: 'products/category/$endPoint');
      List<AllProductModel> categoriesList = [];
      for (int i = 0; i < data.length; i++) {
        categoriesList.add(AllProductModel.fromJson(data[i]));
      }
      return right(categoriesList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
