import 'package:flutter/material.dart';




class Paymentmethod extends StatelessWidget {
  const Paymentmethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: PaymentmethodSTF(),
    );
  }
}

class PaymentmethodSTF extends StatefulWidget {
  const PaymentmethodSTF({Key? key}) : super(key: key);

  @override
  State<PaymentmethodSTF> createState() => _PaymentmethodSTFState();
}

class _PaymentmethodSTFState extends State<PaymentmethodSTF> {

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
          children: [

            ///container on top
            Stack(
              children: [
                ///colored container
                Container(
                height: height*0.07,


                decoration: BoxDecoration(
                  color: Color(0xFF005D68),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(80, 80),
                    bottomRight: Radius.elliptical(80, 80),
                  ),


                ),



                  ),

                ///payment method text
                Container(
                  margin: EdgeInsets.only(left: width*0.3, top: height*0.02),

                  child: Text('Payment Method',

                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),

            ///card icon
            Container(
              margin: EdgeInsets.only(top: height*0.1,left: width*0.0),
              child: Icon(Icons.credit_score_rounded,
              size: 90.0,
              color: Color(0xFF005D68),
              ),
            ),

            ///master card button
            Container(
              width: width*0.86,
              height: height*0.08,

              margin: EdgeInsets.only(top: height*0.15),

              child: Card(

                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),


                child: Row(
                  children: [

                    ///mastercard image
                    Container(
                      margin: EdgeInsets.only(left: width*0.1),
                      width: width*0.1,
                      height: height*0.7,
                      child: Image.asset('assets/images/mastercard.png'),
                    ),

                    ///mastercard text
                    Container(
                      margin: EdgeInsets.only(left: width*0.07),

                      child: Text(
                        'MasterCard',

                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.grey
                        ),
                      ),
                    ),

                    ///forward icon
                    Container(
                      margin: EdgeInsets.only(left: width*0.24),

                      child: Icon(Icons.arrow_forward_ios_outlined,
                        size: 16.0,
                        color: Color(0xFF005D68),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///google pay card button
            Container(
              width: width*0.86,
              height: height*0.08,

              margin: EdgeInsets.only(top: height*0.03, left: width*0.02),

              child: Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),

                child: Row(
                  children: [

                    ///Google pay image
                    Container(
                      margin: EdgeInsets.only(left: width*0.05),

                      width: width*0.2,
                      height: height*0.04,
                      child: Image.asset('assets/images/gpay.png',
                        fit: BoxFit.fill,),
                    ),

                    ///Googlepay text
                    Container(
                      margin: EdgeInsets.only(left: width*0.02),

                      child: Text(
                        'Google Pay',

                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.grey
                        ),
                      ),
                    ),

                    ///forward icon
                    Container(
                      margin: EdgeInsets.only(left: width*0.23),

                      child: Icon(Icons.arrow_forward_ios_outlined,
                        size: 16.0,
                        color: Color(0xFF005D68),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///Add payment method button
            Container(
              margin: EdgeInsets.only(top: height*0.14, left: width*0.0),
              width: width*0.72,
              height: height*0.07,
              child: ElevatedButton(
                onPressed: () {
                  print('bholo');

                },

                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF005D68),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),


                child: Container(
                  margin: EdgeInsets.only(left: width*0.15, top: height*0.023),
                  width: width*0.8,
                  height: height*0.08,
                  child: Text('Add Payment Method',
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  ),
                ),
              ),
            ),








            ///card widget of payment method cards















          ],
        ),
    );
  }
}

