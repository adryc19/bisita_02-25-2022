// ignore_for_file: prefer_const_constructors

import 'package:bisita/reset_password.dart';
import 'package:flutter/material.dart';

class OtpCodePage extends StatelessWidget {
  static String id = ("OtpCodePage");

  const OtpCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "Confirm your Account",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Enter the code we sent",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "to your phone number",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enter the code to reset your password",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Enter Code",
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ResetPasswordPage.id);
                },
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              label: Text(
                "Resend code",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
