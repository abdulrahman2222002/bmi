import 'package:flutter/material.dart';
class login extends StatefulWidget {
   login({Key? key}) : super(key: key);

  @override
  State<login> createState() => loginState();
}

class loginState extends State<login> {
  var emailControler=TextEditingController();
  var passControler=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isVisible=true;
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      
      // appBar:AppBar(
      //   backgroundColor: Colors.green,
      //   title:
      //   const Center(
      //     child:
      //     Text("LogIn",
      //       style: TextStyle(
      //           fontSize:20,
      //           color: Colors.white),
      //
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 18.0,right: 18),
          child:
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const SizedBox(height: 20,),
                //email---------------
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return'Email must be written';
                    }
                    return null;
                  },
                  controller: emailControler,
                  key: ValueKey('Email'),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle:TextStyle(fontSize:20 ,color:Colors.black ),
                    hintText: "examble@gmail.com",
                    fillColor: Colors.white,

                   // border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
                const SizedBox(height: 10),
                //password------------------
                TextFormField(
                  validator: (dynamic value){
                    if(value.isEmpty ){
                      return 'Password must be written';
                    }
                    return null;
                  },
                  obscureText: obscureText,
                  controller: passControler,
                  key: const ValueKey('Password'),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle:const TextStyle(
                        fontSize:20,
                        color:Colors.black,
                    ),
                    hintText: "Enter the password",
                    prefixIcon: const Icon(
                        Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          obscureText=!obscureText;
                          isVisible=!isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility_outlined :Icons.visibility_off_outlined,
                      ),
                    ),
                    //border:const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0,bottom: 18),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5),),

                      color: Colors.green,
                    ),

                    child: MaterialButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          print(emailControler.text);
                          print(passControler.text);
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white


                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
