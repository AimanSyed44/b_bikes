import 'package:b_bikes/EditProfile.dart';
import 'package:b_bikes/Notification.dart';
import 'package:b_bikes/payment_Method.dart';
import 'package:b_bikes/promoCode_Screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

   MainScreen({Key? key}) : super(key: key);

  late double width;
  late double height;



  @override
  Widget build(BuildContext context) {

    GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(

        body: MainScreenSTF(),
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFF005D68),
          title: Container(
            margin: EdgeInsets.only(left: width*0.2),

            child: Text('B bikes'),
          ),
          actions: [

            InkWell(
              onTap: (){

                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> NotificationPage(),
                  ),
                ) ;

              },

              child: Container(
                margin: EdgeInsets.only(right: width*0.02),
                  child: Icon(Icons.notifications_sharp),
              ),
            ),
          ],
        ),


      ),
    );
  }
}

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Container(
          width: width*0.76,
          

          
          ///navDrawer
          child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),


              ),
            ),

            child: ListView(
              padding: const EdgeInsets.all(0),


              children: [

                ///header of drawer with profile info
                DrawerHeader(

                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: height*0.04),
                        width: width*0.2,
                        height: height*0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),

                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/dp3.png',
                            ),
                          ),
                        ),

                      ),


                      Container(
                        margin: EdgeInsets.only(left: width*0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tom Cruise',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 23.0
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text('tomcruise@gmail.com',
                              style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 14.0
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                ///myprofile button
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                  size: 14.0,),

                  leading: Container(
                    width: width*0.1,
                    height: height*0.05,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(13.0)
                    ),
                    child: const Icon(Icons.person,
                      color: Color(0xFF005D68),
                    ),
                  ),


                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> ProfilePageSTL(),
                      ),
                    ) ;
                  },
                ),

                ///payment button
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                    size: 14.0,
                  ),

                  leading: Container(
                    width: width*0.1,
                    height: height*0.05,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(13.0)
                    ),

                    child: const Icon(Icons.payment,
                      color: Color(0xFF005D68),
                    ),
                  ),

                  title: const Text('Payment '),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Paymentmethod(),
                      ),
                    ) ;
                  },
                ),

                ///free credit button
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                    size: 14.0,
                  ),

                  leading: Container(
                    width: width*0.1,
                    height: height*0.05,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(13.0)
                    ),

                    child: const Icon(Icons.wallet_giftcard,
                      color: Color(0xFF005D68),
                    ),
                  ),

                  title: const Text(' Get free Credits '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ///promos button
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                    size: 14.0,
                  ),

                  leading: Container(
                    width: width*0.1,
                    height: height*0.05,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(13.0)
                    ),

                    child: const Icon(Icons.discount_outlined,
                      color: Color(0xFF005D68),
                    ),
                  ),

                  title: const Text(' Promos '),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> PromoCode(),
                      ),
                    ) ;
                  },
                ),

                Container(
                  margin: EdgeInsets.only(top: height*0.25),

                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),

                ///logout button
                Container(
                  margin: EdgeInsets.only(top: height*0.023),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    color: Color(0xFF005D68),
                    child: ListTile(

                      leading: const Icon(Icons.logout,
                        color: Colors.white,
                      ),

                      title: const Text('LogOut',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}


class MainScreenSTF extends StatefulWidget {
  const MainScreenSTF({Key? key}) : super(key: key);

  @override
  State<MainScreenSTF> createState() => _MainScreenSTFState();
}

class _MainScreenSTFState extends State<MainScreenSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Column(
          children: [

            ///container of scan button
            Container(
              margin: EdgeInsets.only(top: height*0.79, left: width*0.13),
              width: width*0.72,
              height: height*0.07,

              child: ElevatedButton.icon(

                  onPressed: (){},

                  icon: Icon(Icons.qr_code_scanner),

                  label: Text('Scan',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),

                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF005D68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}




