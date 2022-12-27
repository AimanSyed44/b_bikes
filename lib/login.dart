import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginScreenSTF(),
      backgroundColor: Colors.black,
    );
  }
}

class loginScreenSTF extends StatefulWidget {
  const loginScreenSTF({Key? key}) : super(key: key);

  @override
  State<loginScreenSTF> createState() => _loginScreenSTFState();
}

class _loginScreenSTFState extends State<loginScreenSTF> {

  late double width;
  late double height;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              /// Login word
              Row(
                children: [

                  ///back arrow icon
                  InkWell(
                    onTap: (){
                      print('gooo');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> loginScreen())
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: width*0.04, top: height*0.05),
                      width: width*0.1,
                      height: height*0.05,

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white54,
                          width: 1,
                        ),

                        borderRadius: BorderRadius.circular(7.0),
                      ),

                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  /// login text
                  Container(
                    margin: EdgeInsets.only(top: height*0.05, left: width*0.05),

                    child: Text(
                      'Log in',

                    style:TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    ),
                  ),

                ],
              ),

              ///name of input field email
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: height*0.1, left:width*0.04),

                  child: Text(
                    'Email',

                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20.0,

                  ),
                  ),
                ),
              ),

              /// elmail input field
              Container(
                width: width*0.98,
                height: height*0.1,
                margin: EdgeInsets.only(top: height*0.02),
                child: TextField(
                  controller: email,

                  style: TextStyle(
                      color: Colors.white
                  ),

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(color: Color(0xFFC44BC1), width: 2.0),
                    ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide(color: Color(0xFFC44BC1), width: 2.0),
                      ),

                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.white54
                    ),
                  ),
                ),
              ),

              ///name of input field password
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: height*0.01, left:width*0.04),

                  child: Text(
                    'Password',

                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20.0,

                    ),
                  ),
                ),
              ),

              ///password input field
              Container(
                width: width*0.98,
                height: height*0.1,
                margin: EdgeInsets.only(top: height*0.02),
                child: TextField(
                  controller: password,

                  style: TextStyle(
                      color: Colors.white
                  ),

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(color: Color(0xFFC44BC1), width: 2.0),
                    ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide(color: Color(0xFFC44BC1), width: 2.0),
                      ),

                      hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.white54
                    ),
                  ),
                ),
              ),

              ///login button
              Container(
                margin: EdgeInsets.only(top: height*0.01, left: width*0.0),
                width: width*0.98,
                height: height*0.07,
                child: ElevatedButton(
                  onPressed: () async {
                    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword
                      (email: email.text,
                        password: password.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>loginScreen())
                    );
                    print('shoo');

                  },

                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF8D0696),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),

                  ///login text button at the bottom
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient
                        (colors: [Color(0xFF8D069),Color(0xFFC44BC1)]
                      ),
                      borderRadius: BorderRadius.circular(13.0),
                    ),

                    child: Container(
                      margin: EdgeInsets.only(left: width*0.44, top: height*0.018),
                      width: width*0.8,
                      height: height*0.07,
                      child: Text('Log in',
                        style: TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                    ),

                  ),
                ),
              ),

              ///signup line
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*0.03, left: width*0.2),

                      child: Text(
                          'Dont have an account?',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ),

                    ///signup button
                    InkWell(
                      onTap: (){
                        print('boo');
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>loginScreen())
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: height*0.03, left: width*0.02),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
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

