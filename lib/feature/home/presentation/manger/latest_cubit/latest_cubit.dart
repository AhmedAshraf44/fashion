import '../../../data/repo/home_repo.dart';
import 'latest_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LatestCubit extends Cubit<LatestState>{
  LatestCubit(this.homeRepo) : super(LatestInitial());
  
 final HomeRepo homeRepo;

  Future<void> getLatest()async{
    emit(LatestLoading());
    final result = await homeRepo.getAllProduct();
    result.fold((failure) {
      emit(LatestFailure(failure.errorMessage),); 
    }, (product) {
    // log('product $product');
    return emit(LatestSuccess(product: product));
    }
    );
  }


}