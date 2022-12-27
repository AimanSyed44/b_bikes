import 'package:flutter/material.dart';

import 'inviteSuccesfully_Screen.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PromoCodeSTF(),
    );
  }
}


class PromoCodeSTF extends StatefulWidget {
  const PromoCodeSTF({Key? key}) : super(key: key);

  @override
  State<PromoCodeSTF> createState() => _PromoCodeSTFState();
}

class _PromoCodeSTFState extends State<PromoCodeSTF> {

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
                  /// Logo Image
                  Container(
                    margin: EdgeInsets.only(top: height*0.08, left: width*0.3),
                    width: width*0.34,
                    child: Image.asset(
                      'assets/images/envelope.png',
                      color: Color(0xFF005D68),
                    ),
                  ),

                  /// Invite Friends Text
                  Container(
                    margin: EdgeInsets.only(top: height*0.34, left: width*0.14),
                    child: Text(
                      'Invite 9 more friends to get premium',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.black,
                        fontFamily: 'poppins'
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: height*0.37, left: width*0.34),
                    child: Text(
                      'rides for free!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'poppins'
                      ),
                    ),
                  ),

                  /// Promo Code
                  Container(
                    margin: EdgeInsets.only(top: height*0.5, left: width*0.32),
                    child: Text(
                      'Your Promo Code',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'poppins'
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.55, left: width*0.39),
                    child: Text(
                      'TYTAOQ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'poppins'
                      ),
                    ),
                  ),

                  /// Invite Button
                  Container(
                    margin: EdgeInsets.only(top: height*0.67, left: width*0.13),
                    width: width*0.72,
                    height: height*0.07,
                    child: ElevatedButton(
                      onPressed: () {
                       print('bholo');
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> InviteFreinds(),
                           ),
                       );
                      },

                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF005D68),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),


                      child: Container(
                        margin: EdgeInsets.only(left: width*0.3, top: height*0.018),
                        width: width*0.8,
                        height: height*0.08,
                        child: Text('Invite',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Entered Promo Code
                  Container(
                    margin: EdgeInsets.only(top: height*0.8, left: width*0.2),
                    child: Text(
                      'Entered Promo Code: PASZIO',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'poppins'
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
