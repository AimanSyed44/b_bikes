import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: NotificationSTF(),
    );
  }
}



class NotificationSTF extends StatefulWidget {
  const NotificationSTF({Key? key}) : super(key: key);

  @override
  State<NotificationSTF> createState() => _NotificationSTFState();
}

class _NotificationSTFState extends State<NotificationSTF> {

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      
      child: Stack(

        children: [
          Container(
            width: width*0.5,
            height: height*0.5,
            margin: EdgeInsets.only( top: height*0.1, left: width*0.23),
            child: Image.asset('assets/images/calender.png',
              fit: BoxFit.contain,),
          ),

          Column(
            children: [

              ///topbar
              Container(
                height: height*0.08,
                width: width*1.0,
                color: Color(0xFF005D68),

                ///topbar Row
                child: Row(
                  children: [

                    ///menu icon
                    Container(
                      margin: EdgeInsets.only(top: height*0.02, left: width*0.04),

                      child: Icon(Icons.menu_outlined,
                      color: Colors.white,
                      ),
                    ),

                    ///notification text
                    Container(
                      margin: EdgeInsets.only(left: width*0.24, top: height*0.02),

                      child: Text('Notifications',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 17.0
                      ),
                      ),
                    ),

                    ///setting icon
                    Container(
                      margin: EdgeInsets.only(top: height*0.02, left: width*0.27),

                      child: Icon(Icons.settings,
                        color: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
              ///notification text 1
              Container(
                margin: EdgeInsets.only(top:height*0.46, left: width*0.02),

                child: Text('Nothing here!!!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 18.0

                ),
                ),
              ),

              ///notification text 2
              Container(
                margin: EdgeInsets.only(top:height*0.01, left: width*0.02),

                child: Text('Tap the notification settings button below',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),

                ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:height*0.01, left: width*0.02),

                child: Text('and check again.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),

                ),
                ),
              ),

              ///Add payment button
              // Container(
              //   margin: EdgeInsets.only(top: height*0.1, left: width*0.0),
              //   width: width*0.8,
              //   height: height*0.06,
              //   child: ElevatedButton(
              //     onPressed: () {
              //
              //     //   AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
              //     //     if (!isAllowed) {
              //     //       // This is just a basic example. For real apps, you must show some
              //     //       // friendly dialog box before call the request method.
              //     //       // This is very important to not harm the user experience
              //     //       AwesomeNotifications().requestPermissionToSendNotifications();
              //     //     }
              //     //
              //     //     else{
              //     //
              //     //       AwesomeNotifications().createNotification(
              //     //           content: NotificationContent(
              //     //               id: 10,
              //     //               channelKey: 'basic_channel',
              //     //               title: 'Simple Notification',
              //     //               body: 'Simple body'
              //     //           )
              //     //       );
              //     //
              //     //     }
              //     //   }
              //     //
              //     //
              //     //   );
              //     //
              //      },
              //
              //     style: ElevatedButton.styleFrom(
              //       primary: Color(0xFF005D68),
              //       padding: EdgeInsets.zero,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //     ),
              //
              //
              //     child: Container(
              //       margin: EdgeInsets.only(left: width*0.15, top: height*0.018),
              //       width: width*0.8,
              //       height: height*0.08,
              //       child: Text('Add Payment Method',
              //         style: TextStyle(
              //             fontSize: 20.0
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

            ],
          ),
        ],
      ),

    );
  }
}

