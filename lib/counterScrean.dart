import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counterCubit/cubit.dart';
import 'counterCubit/state.dart';

class counterScrean extends StatelessWidget {
  const counterScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,counterState>(
        builder: (context,state){
          CounterCubit cubit =BlocProvider.of(context);
          return Scaffold(

            appBar: AppBar(),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      cubit.plus();
                    },
                    child: Icon(Icons.add),
                  ),
                  Text(
                    "${cubit.count}",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      cubit.minus();
                    },
                    child: Icon(Icons.minimize),
                  ),

                ],
              ),
            ),
          );
        },

        listener: (context,state){},
      ),
    );
  }
}
