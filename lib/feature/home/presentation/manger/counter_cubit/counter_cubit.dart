import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);
   void incrementNumber()
    {
     return emit(state + 1);
    }
   void decrementNumber()
    {
      if(state != 0 ){
     emit(state - 1); 
      }
    }
}