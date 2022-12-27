import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ForgetPasswordSTF(),
    );
  }
}


class ForgetPasswordSTF extends StatefulWidget {
  const ForgetPasswordSTF({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordSTF> createState() => _ForgetPasswordSTFState();
}

class _ForgetPasswordSTFState extends State<ForgetPasswordSTF> {


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

                  /// Forget Password Text
                  Container(
                    margin: EdgeInsets.only(top: height*0.14, left: width*0.3),
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.2, left: width*0.24),
                    child: Text(
                      "Don't worry just enter your email",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0
                      ),
                    ),
                  ),

                  /// Email TextField
                  Container(
                    padding: EdgeInsets.all(70),
                    margin: EdgeInsets.only(top: height*0.24),
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

                  /// Button
                  Container(
                    height: height*0.08,
                    width: width*0.65,
                    margin: EdgeInsets.only(top: height*0.54, left: width*0.17),
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
                          'Submit',
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

                  /// Verification Text
                  Container(
                    margin: EdgeInsets.only(top: height*0.68,  left: width*0.23),
                    child: Text(
                      "We will mail a verification code on\nyour email address go and check \nyour gmail account.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 13.0,
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
