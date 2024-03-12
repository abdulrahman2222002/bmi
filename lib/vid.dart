import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vid extends StatelessWidget {
  const vid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:

        Text(
            'Vid',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
    );
  }
}
