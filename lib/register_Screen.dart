import 'package:b_bikes/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: RegisterScreenSTF(),
    );
  }
}

class RegisterScreenSTF extends StatefulWidget {
  const RegisterScreenSTF({Key? key}) : super(key: key);

  @override
  State<RegisterScreenSTF> createState() => _RegisterScreenSTFState();
}

class _RegisterScreenSTFState extends State<RegisterScreenSTF> {

  late double width;
  late double height;

  TextEditingController otpController = TextEditingController();
  TextEditingController numController = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationId = "";

  // DatabaseReference ref = FirebaseDatabase.instance.ref();

  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(

              /// Stack Work
              child: Stack(
                children: [
                  /// Background Colored Container
                  Container(
                    width: width,
                    height: height*0.94,
                    decoration: BoxDecoration(
                      color: Color(0xFF005D68),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(290, 290),
                          // bottomLeft: Radius.elliptical(80, 100),
                          //topRight: Radius.elliptical(200, 80),
                          topLeft: Radius.elliptical(250, 250)
                      ),
                    ),
                  ),

                  /// Login Text
                  Container(
                    margin: EdgeInsets.only(top: height*0.1, left: width*0.39),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                      ),
                    ),
                  ),

                  /// Login Text
                  Container(
                    margin: EdgeInsets.only(top: height*0.17, left: width*0.25),
                    child: Text(
                      'Create an Account with the ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: height*0.2, left: width*0.3),
                    child: Text(
                      'new phone number',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0
                      ),
                    ),
                  ),

                  /// First Name TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.16, left: width*0.03),
                    child: TextFormField(
                      controller: firstnamecontroller,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(
                          Icons.person_add_outlined,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        ),
                        prefixIconConstraints:
                        BoxConstraints(minWidth: 35),
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 14),
                      ),
                    ),
                  ),

                  /// Last Name TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.27, left: width*0.03),
                    child: TextFormField(
                      controller: lastnamecontroller,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(
                          Icons.person_add_outlined,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        ),
                        prefixIconConstraints:
                        BoxConstraints(minWidth: 35),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 14),
                      ),
                    ),
                  ),

                  /// Email TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.39, left: width*0.03),
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        ),
                        prefixIconConstraints:
                        BoxConstraints(minWidth: 35),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 14),
                      ),
                    ),
                  ),

                  /// Continue button
                  Container(
                      height: height*0.08,
                          width: width*0.6,
                          margin: EdgeInsets.only(top: height*0.66, left: width*0.2),
                          alignment: Alignment.center,
                    decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: Colors.white70)),

                  child: Container(
                    height: height*0.08,
                    width: width*0.65,
                    child: ElevatedButton(
                      onPressed: ()async{

                         // await ref.child('Registration').child('user!.uid').set({
                         //
                         //   "firstname":firstnamecontroller.text.trim(),
                         //   "lastname":lastnamecontroller.text.trim(),
                         //   "email":emailcontroller.text.trim(),
                         // });

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> LoginScreen()
                            ),
                        );

                         print('you');
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(.8),
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF005D68),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          //  border: Border.all(color: Colors.white70)),
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

