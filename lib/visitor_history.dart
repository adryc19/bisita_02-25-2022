// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

class VisitorHistoryPage extends StatelessWidget {
  static String id = ("VisitorHistoryPage");

  const VisitorHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "HISTORY",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: TextField(textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height / 3,
        ),
        Icon(Icons.receipt_long, size: 50),
        Text("No history yet, but check again soon.",
            style: TextStyle(fontSize: 10)),
        ],
      ),
    ),)
    ,
    );
  }
}
