import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // AwesomeNotifications().initialize(
  //   // set the icon to null if you want to use the default app icon
  //
  //   null,
  //
  //     [
  //       NotificationChannel(
  //           channelGroupKey: 'basic_channel_group',
  //           channelKey: 'basic_channel',
  //           channelName: 'Basic notifications',
  //           channelDescription: 'Notification channel for basic tests',
  //           defaultColor: Color(0xFF9D50DD),
  //           ledColor: Colors.white)
  //     ],
  //     // Channel groups are only visual and are not required
  //     channelGroups: [
  //       NotificationChannelGroup(
  //           channelGroupkey: 'basic_channel_group',
  //           channelGroupName: 'Basic group')
  //     ],
  //     debug: true
  // );

  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  )
  );
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child:  Scaffold(
          body: EasySplashScreen(
            logo: Image.asset(
                'assets/images/logo.png'),
            title: Text(
              "BBikes",

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFF005D68),
            showLoader: true,
            loadingText: Text("Loading..."),
            navigator: HomeScreen(),
            durationInSeconds: 3,
          ),
        ),
      ),
    );
  }
}