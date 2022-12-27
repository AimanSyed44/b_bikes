import 'package:b_bikes/Homepage.dart';
import 'package:flutter/material.dart';


class ProfilePageSTL extends StatelessWidget {
  const ProfilePageSTL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfilePage(),
    );
  }
}


class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  late double height;
  late double width;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return new Scaffold(
        body: new Container(
          color: Colors.white,

          child: new ListView(
            children: [

              Column(
                children:[

                  ///container of arrow and personal info on top
                  new Container(
                    height: 250.0,
                    color: Colors.white,
                    child: new Column(
                      children: [

                        Container(
                          height: height*0.08,
                          decoration: BoxDecoration(

                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),

                          child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 20.0),
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[

                                  InkWell(
                                    onTap : (){
                                      Navigator.pop(context,
                                          MaterialPageRoute(builder: (context) =>MainScreen()
                                          ),
                                      );
                                    },
                                    child: Container(
                                      child: new Icon(
                                        Icons.arrow_back,
                                        color: Color(0xFF005D68),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25.0),
                                    child: new Text('Personal Info',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.0,

                                            color: Colors.black)),
                                  )
                                ],
                              )),
                        ),


                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: new Stack(
                              fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                        image: new ExactAssetImage(
                                            'assets/images/dp3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 90.0, right: 100.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new CircleAvatar(
                                      backgroundColor: Color(0xFF005D68),
                                      radius: 25.0,
                                      child: new Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),


                  new Container(
                    color: Color(0xffFFFFFF),

                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),

                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),

                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .end,
                                mainAxisSize: MainAxisSize.max,

                                children: [


                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children:[
                                      _status

                                          ? _getEditIcon(

                                      )
                                          : new Container(),
                                    ],
                                  )
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: width*0.02),
                                    child: Icon(Icons.perm_identity_outlined,
                                    color: Colors.grey,),
                                  ),
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Name',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Your Name",

                                      ),
                                      enabled: !_status,
                                      autofocus: !_status,

                                    ),
                                  ),
                                ],
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: width*0.02),
                                    child: Icon(Icons.email,
                                      color: Colors.grey,),
                                  ),

                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Email ID',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter Email ID"),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[

                                  Container(
                                    margin: EdgeInsets.only(right: width*0.02),
                                    child: Icon(Icons.phone,
                                      color: Colors.grey,),
                                  ),

                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Mobile',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter Mobile Number"),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),

                          !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),


      ///save and cancel button
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          ///save button
          Expanded(

            child: Padding(
              padding: EdgeInsets.only(right: 10.0),

              child: Container(
                  child: new ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF005D68),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    child:  Text("Save"),

                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      }
                      );
                    },

                  )),
            ),
            flex: 2,
          ),

          ///cancel button
          Expanded(

            child: Padding(
              padding: EdgeInsets.only(left: 10.0),

              child: Container(

                  child: new ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      primary: Colors.black45,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    child: new Text("Cancel"),

                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      }
                      );
                    },

                  )
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  ///editing icon
  Widget _getEditIcon() {

    return new GestureDetector(

      child: new CircleAvatar(

        backgroundColor: Color(0xFF005D68),
        radius: 14.0,

        child: new Icon(
          Icons.edit,

          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}