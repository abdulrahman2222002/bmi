import 'dart:math';
import 'package:bmi/bmiCubit/cubit.dart';
import 'package:bmi/bmiCubit/state.dart';
import 'package:bmi/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiScreenState extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<bmiCubit,bmiState>(
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('BMI Calculator'),
            backgroundColor: Colors.black54,
          ),
          body: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                             bmiCubit.get(context).changeGender();
                            },
                            child: Container(
                              decoration: BoxDecoration (
                                color: bmiCubit.get(context).isMale? Colors.blue : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children:  const [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width:20),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              bmiCubit.get(context).changeGender();
                            },
                            child: Container(
                              decoration: BoxDecoration (
                                color: bmiCubit.get(context).isMale? Colors.grey:Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children:  const [
                                  Icon(
                                    Icons.female,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),

                                ],
                              ),


                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:   [

                          Text(
                            '${bmiCubit.get(context).height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children:  const [
                              Text(
                                'height',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            value: bmiCubit.get(context).height,
                            min: 140,
                            max: 220,
                            onChanged: (value){
                              bmiCubit.get(context).changHeight(value);
                            },

                            inactiveColor: Colors.white,
                            activeColor: Colors.blue,
                          ),
                        ],
                      ),



                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration (
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:   [

                                Text(
                                  '${bmiCubit.get(context).weight}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,

                                  ),
                                ),
                                const Text(
                                  'weight',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.blue,
                                      onPressed: (){
                                        bmiCubit.get(context).weightMinus();
                                      },
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),

                                    ),
                                    const SizedBox(width: 10),
                                    FloatingActionButton(
                                      backgroundColor: Colors.blue,
                                      onPressed: (){
                                        bmiCubit.get(context).weightPlus();
                                      },
                                      child: const Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),


                          ),
                        ),
                        const SizedBox(width:20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration (
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:   [
                                Text(
                                  '${bmiCubit.get(context).age}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  'age',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.blue,
                                      onPressed: (){
                                        bmiCubit.get(context).ageMinus();
                                      },
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    FloatingActionButton(
                                      backgroundColor: Colors.blue,
                                      onPressed: (){
                                        bmiCubit.get(context).agePlus();
                                      },
                                      child: const Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),

                      height: 40,
                      width: double.infinity,
                      child:
                      MaterialButton(
                        onPressed: (){
                          // double result= weight/ pow(height/100,2);
                          // print(result.round());
                          Navigator.push(context, MaterialPageRoute(
                              builder:(context) =>bmi_result()));
                        },
                        child: const Text(
                          'Calculate',
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
          ),
        );
      },
      listener: (context,state){},
    );
  }
}
