import 'package:flutter/material.dart';

class CameraPrompt extends StatelessWidget {
  const CameraPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraPromptSTF(),
    );
  }
}

class CameraPromptSTF extends StatefulWidget {
  const CameraPromptSTF({Key? key}) : super(key: key);

  @override
  State<CameraPromptSTF> createState() => _CameraPromptSTFState();
}

class _CameraPromptSTFState extends State<CameraPromptSTF> {

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
              width: width,
              height: height*0.11,
              color: Color(0xff49485D),
              child: Center(
                child: Text(''
                    'RIDE',
                  style: TextStyle(
                    color: Color(0xffDCDCDD),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height*0.1),
                    child: Center(
                      child: Text(
                        'Enable Camera',
                   style: TextStyle(
                         color: Color(0xff49485D),
                      fontWeight: FontWeight.w400,
                      fontSize: 30
                      ),
                   ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.2),
                    child: Center(
                      child: Text(
                        'Lime will use your camera to scan QR',
                        style: TextStyle(
                            color: Color(0xff49485D),
                            fontWeight: FontWeight.w300,
                            fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.23),
                    child: Center(
                      child: Text(
                        'code to start your ride.',
                        style: TextStyle(
                            color: Color(0xff49485D),
                            fontWeight: FontWeight.w300,
                            fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.35                                                                                                                                     ),
                      width: width*0.78,
                      height: height*0.08,
                      child: ElevatedButton(
                        onPressed: (){

                          showDialog(context: context,
                              builder: (context){
                                return AlertDialog(
                                  shape:
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20.0),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.only(top: 20.0,),
                                  content: Container(
                                    height: height*0.43,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              '"bBikes" Would Like to Access',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff49485D),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'the Camera',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff49485D),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*0.01),
                                            child: Text(
                                              'bBikes use your camera to scan QR',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff49485D),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'code on scooter or bikes to unlock',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff49485D),
                                              ),
                                            ),
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(top: height*0.03),
                                            width: width,
                                            height: height*0.001,
                                            color: Color(0xffDCDCDD),
                                          ),
                                         Container(
                                           child: Row(
                                             children: [
                                               Container(
                                                 margin: EdgeInsets.only(top: height*0.02),
                                                 child: Text(
                                                   "Don't Allow",
                                                   style: TextStyle(
                                                       color: Color(0xff2310CE),
                                                       fontWeight: FontWeight.w400,
                                                       fontSize: 18
                                                   ),
                                                 ),
                                               ),
                                               Container(
                                                 width: width*0.002,
                                                 height: height*0.06,
                                                 color: Color(0xffDCDCDD),
                                               ),
                                               Container(
                                                 margin: EdgeInsets.only(top: height*0.02),
                                                 child: Text(
                                                   "ok",
                                                   style: TextStyle(
                                                       color: Color(0xff2310CE),
                                                       fontWeight: FontWeight.w400,
                                                       fontSize: 18
                                                   ),
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),

                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });

                          print('bholo');
                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneVerification(),));
                        },
                        child: Text(
                          'Enable Camera Access',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff49485D),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffDCDCDD),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.65, left: width*0.15, right: width*0.15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width*0.17,
                          height: height*0.092,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffDCDCDD),
                          ),
                          child: Icon(
                            Icons.co2_outlined,
                              color: Color(0xff49485D)
                          ),
                        ),
                        Container(
                          width: width*0.17,
                          height: height*0.092,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffDCDCDD),
                          ),
                          child: Icon(
                            Icons.flashlight_on_outlined,
                              color: Color(0xff49485D)
                          ),
                        ),
                      ],
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
