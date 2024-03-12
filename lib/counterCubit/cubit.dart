import 'package:bloc/bloc.dart';
import 'package:bmi/counterCubit/state.dart';

class CounterCubit extends  Cubit<counterState>{
  CounterCubit(): super(initState());
  int count=0;
  minus(){
    count --;
    emit(minusState());
  }
  plus(){
    count ++;
    emit(addState());
  }

}
