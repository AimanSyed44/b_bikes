import 'package:b_bikes/signupScreen.dart';
import 'package:flutter/material.dart';

class homeScreen2 extends StatelessWidget {
  const homeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreen2STF(),
    );
  }
}

class homeScreen2STF extends StatefulWidget {
  const homeScreen2STF({Key? key}) : super(key: key);

  @override
  State<homeScreen2STF> createState() => _homeScreen2STFState();
}

class _homeScreen2STFState extends State<homeScreen2STF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child:Container(
          height: height*2.0,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cycle.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7),
                  BlendMode.darken),

            ),
          ),

          child: Stack(

            children: [

              /// logo image
              Container(
                margin: EdgeInsets.only(top: width*0.1, right: width*0.07),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    /// logo
                    Container(
                      margin: EdgeInsets.only(top: height*0.2),
                      width: width*0.20,
                      child: Image.asset('assets/images/logo_bike.png'),
                    ),

                    /// logo text
                    Container(
                      margin: EdgeInsets.only(top: height*0.23),
                      child: Text(
                        'ike',
                        style: TextStyle(
                            fontFamily: 'libre baskerville ',
                            fontSize: 37.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              /// company name
              Container(
                margin: EdgeInsets.only(top: height*0.34, left: width*0.3),
                child: Text(
                  'Bbikes',
                  style: TextStyle(
                    fontFamily: 'libre baskerville',
                    fontSize: 43,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),


              /// button
              Container(
                margin: EdgeInsets.only(top: height*0.56, left: width*0.05),
                width: width*0.9,
                height: height*0.08,
                child: ElevatedButton(
                  onPressed: () {
                    print('bholo');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> SignupScreen(),
                        )
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
                    margin: EdgeInsets.only(left: width*0.27, top: height*0.018),
                    width: width*0.8,
                    height: height*0.08,
                    child: Text('Phone Number',
                      style: TextStyle(
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: height*0.7, left: width*0.05),
                width: width*0.9,
                height: height*0.08,
                child: ElevatedButton(
                  onPressed: () {
                    print('bholo');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> SignupScreen(),
                        )
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
                    margin: EdgeInsets.only(left: width*0.2, top: height*0.018),
                    width: width*0.8,
                    height: height*0.08,
                    child: Text('Sign up with Google',
                      style: TextStyle(
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}

