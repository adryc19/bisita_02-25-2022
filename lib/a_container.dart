// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AContainer extends StatelessWidget {
  const AContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery
          .of(context)
          .size
          .height - 190,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Center(
        child: Text("Accepted"),
      ),
    );
  }
}
