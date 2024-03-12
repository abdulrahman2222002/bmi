

import 'package:bmi/bmi_screen.dart';
import 'package:bmi/bottom_nav.dart';
import 'package:bmi/confirm.dart';
import 'package:bmi/counterScrean.dart';
import 'package:bmi/fastFoodScreen.dart';
import 'package:bmi/foodDetails.dart';
import 'package:bmi/foodScreen.dart';
import 'package:bmi/login.dart';
import 'package:bmi/messenger.dart';
import 'package:bmi/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bmiCubit/cubit.dart';
import 'bmiCubit/state.dart';



main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>bmiCubit(),
      child:  ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: ( BuildContext context ,child){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home:confirmOrder(),
              );
            },
      ),
    );
  }

}




