import 'package:b_bikes/register_Screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'forgetPassword_Screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginScreenSTF(),
    );
  }
}

class LoginScreenSTF extends StatefulWidget {
  const LoginScreenSTF({Key? key}) : super(key: key);

  @override
  State<LoginScreenSTF> createState() => _LoginScreenSTFState();
}

class _LoginScreenSTFState extends State<LoginScreenSTF> {

  late double width;
  late double height;

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
                    margin: EdgeInsets.only(top: height*0.14, left: width*0.4),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),

                  /// Registration Link

                  Container(
                    margin: EdgeInsets.only(top: height*0.22, left: width*0.2),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400
                        ),
                        children: [
                          TextSpan(
                            text: "Don't Have an Account?",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline
                            ),
                            text: "  Register Now",
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen(),));
                              },
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Email TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.2),
                    child: TextFormField(
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

                  /// Password TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        ),
                        prefixIconConstraints:
                        BoxConstraints(minWidth: 35),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 14),
                      ),
                    ),
                  ),

                  /// Login Button
                  Container(
                    height: height*0.08,
                    width: width*0.65,
                    margin: EdgeInsets.only(top: height*0.57, left: width*0.16),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(color: Colors.white70)),


                    child: Container(
                      height: height*0.08,
                      width: width*0.65,
                      child: ElevatedButton(
                        onPressed: (){

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

                  /// Forget Password Link
                  Container(
                    margin: EdgeInsets.only(top: height*0.7, left: width*0.3),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400
                        ),
                        children: [
                          TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline
                            ),
                            text: "Forget Password?",
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword(),));
                              },
                          ),
                        ],
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
