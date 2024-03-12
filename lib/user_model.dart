import 'package:flutter/material.dart';
class usermodel{
  int? id;
  String? name;
  String?phone;

  usermodel({
    required this.id,
    required this.name,
    required this.phone,
  });
}
// ignore: camel_case_types
class userModel extends StatelessWidget {
  List<usermodel> users =[

    usermodel(
      id: 1,
      name: 'abdo',
      phone: '01000000000',
    ),

    usermodel(
      id: 2,
      name: 'mahmoud',
      phone: '01000000000',
    ),

    usermodel(
      id: 3,
      name: 'ahmed',
      phone: '01000000000',
    ),
    usermodel(
      id: 4,
      name: 'mohamed',
      phone: '01000000000',
    ),
    usermodel(
      id: 5,
      name: 'ali',
      phone: '01000000000',
    ),
    usermodel(
      id: 6,
      name: 'saad',
      phone: '01000000000',
    ),
    usermodel(
      id: 7,
      name: 'waad',
      phone: '01000000000',
    ),
    usermodel(
      id: 8,
      name: 'hana',
      phone: '01000000000',
    ),
    usermodel(
      id: 9,
      name: 'nour',
      phone: '01000000000',
    ),
    usermodel(
      id: 10,
      name: 'nada',
      phone: '01000000000',
    ),
    usermodel(
      id: 11,
      name: 'elen',
      phone: '01000000000',
    ),
    usermodel(
      id: 12,
      name: 'eman',
      phone: '01000000000',
    ),
  ];
  userModel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[800],
        title: const Text(
          'User',
          style: TextStyle(
            color: Colors.white,
          ),

        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>buildUserItem(users [index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey[800],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(usermodel model){
    return Padding(
      padding: const EdgeInsets.only(left:10,top: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            radius: 25,
            child:  Text(
              '${model.id}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),
            ),
          ),
          const SizedBox(width:10 ,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:  [
                Text(
                  '${model.name}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
                Text(
                  '${model.phone}',
                  style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
