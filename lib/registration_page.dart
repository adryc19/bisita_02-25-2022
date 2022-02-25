// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:bisita/functions.dart';
import 'package:bisita/list.dart';
import 'package:bisita/privacypolicy.dart';
import 'package:bisita/termsandcondition.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class RegistrationPage extends StatelessWidget {
  static String id = ("RegistrationPage");
  final TextEditingController firstController = TextEditingController();
  final TextEditingController middleController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();

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
            SizedBox(width: MediaQuery.of(context).size.width / 6),
            Text(
              "Registration Form",
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
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus;
          },
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal Information",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 40,
                          width: 180,
                          child: TextField(
                            controller: firstController,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              hintText: "First Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 40,
                          width: 180,
                          child: TextField(
                            controller: middleController,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              hintText: "Middle Initial",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.2,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, ListPage.id);
                            },
                            child: Text("See List of Valid ID's"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    controller: lastController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    controller: dateController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    controller: addressController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    controller: phoneController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    controller: emailController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    controller: cPasswordController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text("I agree to the"),
                              SizedBox(
                                height: 30,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, TermsAndConditionPage.id);
                                  },
                                  child: Text("Terms and Conditions"),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("and the"),
                              SizedBox(
                                height: 30,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, PrivacyPolicy.id);
                                  },
                                  child: Text("Privacy Policy"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      if (firstController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your first name");
                      } else if (middleController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your middle name");
                      } else if (lastController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your last name");
                      } else if (dateController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your date of birth");
                      } else if (addressController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your address");
                      } else if (phoneController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your phone number");
                      } else if (emailController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your email address");
                      } else if (!emailController.text.contains("@")) {
                        functions.errorBox(
                            context, "Please enter a valid email address");
                      } else if (passwordController.text.isEmpty) {
                        functions.errorBox(
                            context, "Please enter your password name");
                      } else if (passwordController.text.length < 9) {
                        functions.errorBox(context,
                            "Must contain at least 9 characters, 1 uppercase, letters and numbers");
                      } else if (cPasswordController.text !=
                          passwordController.text) {
                        functions.errorBox(context, "Password does not match");
                      } else if (emailController.text ==
                              "jgulane@psu.palawan.edu.ph" ||
                          emailController.text ==
                              "aevangelista@psu.palawan.edu.ph" ||
                          emailController.text ==
                              "cjacosta@psu.palawan.edu.ph" ||
                          emailController.text ==
                              "eafuertes@psu.palawan.edu.ph") {
                        role = true;
                        functions.register(
                          context,
                          firstController.text,
                          middleController.text,
                          lastController.text,
                          dateController.text,
                          addressController.text,
                          phoneController.text,
                          emailController.text,
                          passwordController.text,
                        );
                        functions.getCurrentUser();
                      } else {
                        role = false;
                        functions.register(
                          context,
                          firstController.text,
                          middleController.text,
                          lastController.text,
                          dateController.text,
                          addressController.text,
                          phoneController.text,
                          emailController.text,
                          passwordController.text,
                        );
                        Navigator.pushNamedAndRemoveUntil(
                            context, LoginPage.id, (route) => false);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginPage.id, (route) => false);
                    },
                    child: Text("Already have an Account"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
