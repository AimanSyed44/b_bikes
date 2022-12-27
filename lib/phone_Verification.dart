import 'package:b_bikes/location_Prompt.dart';
import 'package:flutter/material.dart';



class PhoneVerification extends StatelessWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCDCDD),
      body: PhoneVerificationSTF(),
    );
  }
}



class PhoneVerificationSTF extends StatefulWidget {
  const PhoneVerificationSTF({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationSTF> createState() => _PhoneVerificationSTFState();
}

class _PhoneVerificationSTFState extends State<PhoneVerificationSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [

          /// heading
          Container(
            margin: EdgeInsets.only(top: height*0.2),
            child: Text(
              'Enter the 4-digit code send to (408)',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                color: Color(0xff0D0F17),
              ),
            ),
          ),

          /// textfield
          Container(
            padding: EdgeInsets.all(15),
            child: TextFormField(
              cursorColor: Color(0xff0D0F17),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Verification Text',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationPrompt(),));
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
              'Resend Code',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                color: Color(0xff0D0F17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
