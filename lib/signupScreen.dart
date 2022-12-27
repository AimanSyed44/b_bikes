import 'package:b_bikes/HomeScreen.dart';
import 'package:b_bikes/phone_Verification.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignupScreenSTF(),
    );
  }
}



class SignupScreenSTF extends StatefulWidget {
  const SignupScreenSTF({Key? key}) : super(key: key);

  @override
  State<SignupScreenSTF> createState() => _SignupScreenSTFState();
}

class _SignupScreenSTFState extends State<SignupScreenSTF> {

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
            /// icon card top bar
            Container(
              margin: EdgeInsets.only(top: height*0.02, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){

                      print('kalia');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen(),));
                    },
                    child: Container(
                      height: height*0.04,
                      width: width*0.07,
                      margin: EdgeInsets.only(left: width*0.04),
                      child: Card(
                        elevation: 9.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_sharp,
                          size: 13,
                          color: Color(0xff0D0F17),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height*0.04,
                    width: width*0.07,
                    margin: EdgeInsets.only(right: width*0.04),
                    child: Card(
                      elevation: 9.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.question_mark_rounded,
                        size: 13,
                        color: Color(0xff0D0F17),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// images
            Container(
              margin: EdgeInsets.only(top: height*0.05),
              child: Image.asset('assets/images/d8_09.png'),
            ),
            /// text
            Container(
              margin: EdgeInsets.only(top: height*0.03),
              child: Text(
                'Start Riddding Now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0D0F17),
                ),
              ),
            ),


            /// textfield
            Container(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                cursorColor: Color(0xff0D0F17),
                style: TextStyle(
                  color: Color(0xff0D0F17),
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefix: Container(
                    child: Text('+92',
                      style: TextStyle(
                        color: Color(0xff0D0F17),
                      ),
                    ),
                  ),
                  prefixIcon: Icon(Icons.arrow_drop_down_sharp,
                    color: Color(0xff0D0F17),
                  ),
                  labelText: 'Phone number',
                ),
              ),
            ),

            /// button
            Container(
              margin: EdgeInsets.only(top: height*0.03),
              width: width*0.9,
              height: height*0.08,
              child: ElevatedButton(
                onPressed: (){
                  print('bholo');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneVerification(),));
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    color: Color(0xffDCDCDD),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff49485D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),

            /// text
            Container(
              margin: EdgeInsets.only(top: height*0.03),
              child: Text(
                'We will send a text to verify your phone',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  color: Color(0xff0D0F17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
