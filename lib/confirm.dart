
class confirmOrder extends StatefulWidget {
   confirmOrder({Key? key}) : super(key: key);

  @override
  State<confirmOrder> createState() => _confirmOrderState();
}

class _confirmOrderState extends State<confirmOrder> {
  var nameControler=TextEditingController();

  var emailControler=TextEditingController();

  var phoneControler=TextEditingController();

  var addressControler=TextEditingController();

  var passwordControler=TextEditingController();

  var formKey=GlobalKey<FormState>();

   bool isVisible=true;

   bool obscureText=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:ColorManager.primary,
        title: Text(
            'Confirm Order',
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                cursorColor: ColorManager.black,
                decoration:  InputDecoration(
                  label:  Text(
                      'Name',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                    labelStyle: TextStyle(
                    color: ColorManager.lightPrimary,
                    ),
                  prefixIcon: Icon(Icons.account_circle_rounded,color: ColorManager.darkGrey),
                ),
                controller: nameControler,
                validator: (value)
                {
                  if(value!.isEmpty){
                    return 'Name can not be empty';
                  }
                },
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only( top: 20, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        cursorColor: ColorManager.black,
                        decoration:  InputDecoration(
                          label:  Text(
                              'Email',
                            style: TextStyle(
                              fontSize: 15.sp,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: ColorManager.lightPrimary,
                          ),
                          prefixIcon: Icon(Icons.email_rounded,color: ColorManager.darkGrey),
                        ),
                        controller: emailControler,
                        validator: (value)
                        {
                          if(value!.isEmpty){
                            return 'Email can not be empty';
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(top: 25),
                        color: ColorManager.darkGrey,
                        height: 30.h,
                        width: 1.w,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        cursorColor: ColorManager.black,
                        decoration:  InputDecoration(
                          label:  Text(
                              'phone',
                            style: TextStyle(
                              fontSize: 15.sp,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: ColorManager.lightPrimary,
                          ),
                          prefixIcon: Icon(Icons.phone,color: ColorManager.darkGrey),
                        ),
                        controller: phoneControler,
                        validator: (value)
                        {
                          if(value!.isEmpty){
                            return 'Phone number can not be empty';
                          }
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                cursorColor: ColorManager.black,
                decoration:  InputDecoration(
                  label:  Text(
                      'Address',
                    style: TextStyle(
                    fontSize: 15.sp,
                  ),),
                  labelStyle: TextStyle(
                    color: ColorManager.lightPrimary,
                  ),
                  prefixIcon: Icon(Icons.fmd_good_outlined,color: ColorManager.darkGrey),
                ),
                controller: addressControler,
                validator: (value)
                {
                  if(value!.isEmpty){
                    return 'Address can not be empty';
                  }
                },
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 20,bottom: 40),
                child: TextFormField(
                  cursorColor: ColorManager.black,
                  decoration:  InputDecoration(
                    label:  Text(
                        'Password',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    labelStyle:  TextStyle(
                      color: ColorManager.lightPrimary,
                    ),
                    prefixIcon:  Icon(Icons.lock,color: ColorManager.darkGrey),
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
                  ),
                  controller: passwordControler,
                  validator: (value)
                  {
                    if(value!.isEmpty){
                      return 'Password can not be empty';
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscureText,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container (
                    width: 100.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color:ColorManager.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          formKey.currentState!.validate();
                        });
                      },

                      child:  Text(
                          'confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30.w,),
                  Container(
                    width: 100.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color:ColorManager.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          formKey.currentState!.validate();
                        });
                      },

                      child:  Text(
                          'cancel',
                        style: TextStyle(
                          color: ColorManager.white,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorManager {
  static Color primary = const Color(0xffff8303);
  static Color darkGrey = const Color(0xff858585);
  static Color lightGrey = const Color(0xffC4C4C4);
  static Color lightPrimary = const Color(0xfffea82f); //color with 80% opacity
  static Color white = const Color(0xffffffff);
  static Color black = const Color(0xff1a1a1a);
  static Color error = const Color(0xffe61f34);
}
