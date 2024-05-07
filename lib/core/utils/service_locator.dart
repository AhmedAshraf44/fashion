import 'package:dio/dio.dart';
import 'package:fason_app/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/data/repo/home_repo_impl.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}