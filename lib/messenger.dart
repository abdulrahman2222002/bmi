import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class messenger extends StatelessWidget {
  const messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarBrightness: Brightness.light,
        ),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-icon/facebook_318-903444.jpg?size=338&ext=jpg'),
              radius: 15,
            ),
            SizedBox(width: 15,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey[850],
            child: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey[850],
            child: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 10,),
        ],


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search_sharp,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20
                        ) ,
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 100,
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
                  itemBuilder: (context,index)=>story(),
                  scrollDirection: Axis.horizontal,

                ),
              ),
              const SizedBox(height: 15,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>chat() ,
                  separatorBuilder: ((context, index) =>const SizedBox(
                    height: 10,
                  ) ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
  Widget story(){
    return
      Container(
      width: 50,
      child:
      Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/abdo.jpg',
                ),
                radius: 25,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          const Text(
            'Abdulrahman mahmoud Abdulaziz',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style:TextStyle(
              color: Colors.white,
            ) ,
          ),
        ],
      ),
    );
  }
  Widget chat(){
    return
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/abdo.jpg',
                ),
                radius: 25,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  'Abdulrahman mahmoud Abdulaziz ',
                  overflow: TextOverflow.ellipsis,
                  style:TextStyle(
                    color: Colors.white,
                  ) ,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        ' Message MessageMessage Message',
                        overflow: TextOverflow.ellipsis,
                        style:TextStyle(
                          color: Colors.white,
                        ) ,
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 2,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '12:12',
                      style:TextStyle(
                        color: Colors.white,
                      ) ,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'AM',
                      style:TextStyle(
                        color: Colors.white,
                      ) ,
                    ),
                  ],
                ),


              ],
            ),
          ),
        ],
      );
  }
}
