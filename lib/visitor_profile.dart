// ignore_for_file: prefer_const_constructors, empty_statements, unused_label, prefer_const_literals_to_create_immutables, dead_code, use_key_in_widget_constructors

import 'package:bisita/functions.dart';
import 'package:bisita/login_page.dart';
import 'package:flutter/material.dart';

class VisitorProfilePage extends StatelessWidget {
  static String id = ("VisitorProfilePPage");

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 50),
            Text(
              "PROFILE",
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 150,
                width: 250,
                color: Colors.black,
                child: Center(
                  child: Container(
                    height: 148,
                    width: 248,
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit),
                label: Text(
                  "Edit my profile",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("First Name:")),
                  SizedBox(width: 10),
                  Text("Name"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Middle Name:")),
                  SizedBox(width: 10),
                  Text("Middle Initial"),
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
                  SizedBox(width: 120, child: Text("Date of Birth:")),
                  SizedBox(width: 10),
                  Text("Birth Date"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Address:")),
                  SizedBox(width: 10),
                  Text("Address"),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Email:")),
                  SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        suffixIcon: Icon(Icons.edit),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(width: 120, child: Text("Password:")),
                  SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        hintText: "Enter Password",
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  onPressed: () {
                    functions.logout(context);
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
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
