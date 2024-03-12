import 'package:bmi/home.dart';
import 'package:bmi/search.dart';
import 'package:bmi/vid.dart';
import 'package:flutter/material.dart';
class bottomNav extends StatefulWidget {
   bottomNav({Key? key}) : super(key: key);

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int current=0;
  List<Widget> body=[
    home(),
    search(),
    vid(),
  ];
  List<String> title=[
    'home',
    'search',
    'vid',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[current]),

      ),
      body: body[current],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        currentIndex: current,
        onTap: (index){
          setState(() {
            current=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,

            ),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp
            ),
            label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video
            ),
            label: 'vid'
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.shopping_bag_outlined
          //   ),
          //   label: 'shopping'
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.person
          //   ),
          //   label: 'me'
          // ),
        ],
      ),
    );
  }
}
