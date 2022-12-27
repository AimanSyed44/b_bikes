import 'package:flutter/material.dart';

class mastercard extends StatelessWidget {
  const mastercard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mastercardSTF(),
    );
  }
}

class mastercardSTF extends StatefulWidget {
  const mastercardSTF({Key? key}) : super(key: key);

  @override
  State<mastercardSTF> createState() => _mastercardSTFState();
}

class _mastercardSTFState extends State<mastercardSTF> {

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Container(

        ) ,


    );
  }
}

