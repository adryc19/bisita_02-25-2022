// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:bisita/login_page.dart';
import 'package:flutter/material.dart';

class AdminProfilePage extends StatelessWidget {
  static String id = ("AdminProfilePage");

 final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 20),
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/b.png",
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("First Name:")),
                  SizedBox(width: 10),
                  Text("First Name"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Middle Name:")),
                  SizedBox(width: 10),
                  Text("Enter Middle Name"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Last Name:")),
                  SizedBox(width: 10),
                  Text("Last Name"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Email:")),
                  SizedBox(width: 10),
                  Text("Enter Email"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Password:")),
                  SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(hintText: "Enter Password"),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  child: Text(
                    "Log out",
                    style: TextStyle(
                      color: Colors.black,
                    ),
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
