import 'dart:math';

import 'package:bmi/bmiCubit/cubit.dart';
import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: const Text('BMI Result'),
        backgroundColor: Colors.black54,
      ),
      body:Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
              Text(
                bmiCubit.get(context).isMale? 'Male' : 'FeMale',
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white

              ),
            ),
            const SizedBox(height: 20,),
             Text(
              'Result= ${ (bmiCubit.get(context).weight/ pow (bmiCubit.get(context).height/100,2)).round()}',
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900

              ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),

                height: 40,
                width:200,
                child:
                MaterialButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'ReCalculate',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
