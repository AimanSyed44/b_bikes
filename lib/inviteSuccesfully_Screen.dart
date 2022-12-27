import 'package:flutter/material.dart';

class InviteFreinds extends StatelessWidget {
  const InviteFreinds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: InviteFriendsSTF(),
    );
  }
}

class InviteFriendsSTF extends StatefulWidget {
  const InviteFriendsSTF({Key? key}) : super(key: key);

  @override
  State<InviteFriendsSTF> createState() => _InviteFriendsSTFState();
}

class _InviteFriendsSTFState extends State<InviteFriendsSTF> {

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
             margin: EdgeInsets.only(top: height*0.06),
             child: Stack(
               children: [
                 /// circled colored Contianer
                 Container(
                   margin: EdgeInsets.only(top: height*0.08, left: width*0.3),
                   width: width*0.4,
                   height: height*0.2,
                   decoration: BoxDecoration(
                       color: Color(0xFF005D68),
                       borderRadius: BorderRadius.circular(150)
                   ),

                 ),

                 ///image container
                 Container(
                   width: width*0.3,
                   height: height*0.3,
                   margin: EdgeInsets.only(left: width*0.35, top: height*0.025),
                   child: Image.asset('assets/images/checked.png'),
                 ),

                 /// Invite Text
                 Container(
                   margin: EdgeInsets.only(top: height*0.4, left: width*0.2),
                   child: Text(
                     'INVITATION SUCCESSFULL',
                     style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 18.0,
                         color: Colors.black,
                         fontFamily: 'poppins'
                     ),
                   ),
                 ),

                 ///paragraph under invite text
                 Container(
                   margin: EdgeInsets.only(top: height*0.46, left: width*0.2),
                   child: Text(
                     'Invitation to 9 friends sent successfully.',
                     style: TextStyle(
                         fontWeight: FontWeight.w400,
                         fontSize: 13,
                         color: Colors.black,
                         fontFamily: 'poppins'
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: height*0.48, left: width*0.17),
                   child: Text(
                     'Your bonus will be credited within 24 hours',
                     style: TextStyle(
                         fontWeight: FontWeight.w400,
                         fontSize: 13,
                         color: Colors.black,
                         fontFamily: 'poppins'
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: height*0.5, left: width*0.36),
                   child: Text(
                     'in your wallet.',
                     style: TextStyle(
                         fontWeight: FontWeight.w400,
                         fontSize: 13,
                         color: Colors.black,
                         fontFamily: 'poppins'
                     ),
                   ),
                 ),

                 /// Button
                 Container(
                   margin: EdgeInsets.only(top: height*0.6, left: width*0.13),
                     width: width*0.72,
                     height: height*0.07,
                   child: ElevatedButton(
                     onPressed: () {
                       print('bholo');
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> InviteFreinds(),));
                     },

                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFF005D68),
                       padding: EdgeInsets.zero,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                     ),


                     child: Container(
                       margin: EdgeInsets.only(left: width*0.25, top: height*0.018),
                       width: width*0.8,
                       height: height*0.08,
                       child: Text('Continue',
                         style: TextStyle(
                             fontSize: 18.0
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
