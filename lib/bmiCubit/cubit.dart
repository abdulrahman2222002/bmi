import 'package:bloc/bloc.dart';
import 'package:bmi/bmiCubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bmiCubit extends Cubit<bmiState>{
  bmiCubit(): super(bmiInitState());
  double age=40;
  double weight=80;
  double height=180;
  bool isMale=true;
   static bmiCubit get(context){
    return  BlocProvider.of(context);
  }

  agePlus(){
    age ++;
    emit(bmiAgePlusState());
  }
  ageMinus(){
    age --;
    emit(bmiAgeMinusState());
  }
  weightPlus(){
    weight ++;
    emit(bmiWeightPlusState());
  }
  weightMinus(){
    weight --;
    emit(bmiWeightMinusState());
  }
  changHeight(value){
     height=value;
     emit(changeHeightState());
  }
  changeGender(){
     isMale=!isMale;
     emit(changeGenderState());
  }


}