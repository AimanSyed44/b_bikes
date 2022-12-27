import 'package:b_bikes/signupScreen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenSTF(),
    );
  }
}



class HomeScreenSTF extends StatefulWidget {
  const HomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<HomeScreenSTF> createState() => _HomeScreenSTFState();
}

class _HomeScreenSTFState extends State<HomeScreenSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Stack(
          children: [

            /// container1
            Container(
              height: height*0.5,
              width: width,
              color: Color(0xff2310CE),
            ),

            /// container2
            Container(
              margin: EdgeInsets.only(top: height*0.5),
              height: height*0.4718,
              width: width,
              color: Colors.black87,
            ),

            /// logo image
            Container(
              margin: EdgeInsets.only(top: width*0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// logo
                  Container(
                    width: width*0.16,
                    child: Image.asset('assets/images/logo_bike.png'),
                  ),
                  /// text
                  Container(
                    margin: EdgeInsets.only(top: width*0.026),
                    child: Text(
                      'ike',
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// image
            Container(
              width: width*0.8,
              margin: EdgeInsets.only(top: height*0.26, left: width*0.2),
              child: Image.asset('assets/images/bike (2).png'),
            ),

            /// company name
            Container(
              margin: EdgeInsets.only(top: height*0.7, left: width*0.35),
              child: Text(
                'Gazelle',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.755, left: width*0.394),
              child: Text(
                'ultimate',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2310CE),
                    fontStyle: FontStyle.italic
                ),
              ),
            ),

            /// button
            InkWell(
              onTap: (){

                print('shooo');
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen(),));
              },
              child: Container(
                margin: EdgeInsets.only(top: height*0.83, left: width*0.1),
                height: height*0.1,
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Color(0xff49485D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: width*0.03),
                      height: height*0.082,
                      width: width*0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.white30,
                      ),
                      child: Card(
                        elevation: 9.0,
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.03),
                      child: Icon(Icons.phone_android_outlined,
                        color: Color(0xffDCDCDD),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.01),
                      child: Text(
                        'Continue with Phone Number',
                        style: TextStyle(
                            color: Color(0xffDCDCDD),
                            fontSize: 16
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
