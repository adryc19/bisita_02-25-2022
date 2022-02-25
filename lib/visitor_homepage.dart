// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, deprecated_member_use, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'dart:convert';

import 'package:bisita/admin_homepage.dart';
import 'package:bisita/functions.dart';
import 'package:bisita/visitor_history.dart';
import 'package:bisita/visitor_notification.dart';
import 'package:bisita/visitor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VisitorHomePage extends StatefulWidget {
  static String id = ("VisitorHomePage");

  @override
  State<VisitorHomePage> createState() => _VisitorHomePageState();
}

class _VisitorHomePageState extends State<VisitorHomePage> {
  final TextEditingController personController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();
  late List<String> autoCompletePersonData;
  late List<String> autoCompleteTimesData;
  late List<String> autoCompleteDatesData;

  Future fetchAutoCompleteConcernPersonData() async {
    final String concernStringData = await rootBundle.loadString("");
    final List<dynamic> years = jsonDecode(concernStringData);
    final List<String> concernPersonStringData = years.cast<String>();

    setState(
      () {
        autoCompletePersonData = concernPersonStringData;
      },
    );
  }

  Future fetchAutoCompleteDatesData() async {
    final String datesStringData = await rootBundle.loadString("");
    final List<dynamic> years = jsonDecode(datesStringData);
    final List<String> dateStringData = years.cast<String>();

    setState(
      () {
        autoCompleteDatesData = dateStringData;
      },
    );
  }

  Future fetchAutoCompleteTimesData() async {
    final String timesStringData = await rootBundle.loadString("");
    final List<dynamic> years = jsonDecode(timesStringData);
    final List<String> timeStringData = years.cast<String>();

    setState(
      () {
        autoCompleteTimesData = timeStringData;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteConcernPersonData();
    fetchAutoCompleteTimesData();
    fetchAutoCompleteDatesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "${userData!["first"].toString()} ${userData!["middle"].toString()} ${userData!["last"].toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Need to visit PSU - Narra?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              SizedBox(height: 20),
              Text(
                "Create a new Visit Request",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 1,
                  thickness: 3,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  controller: personController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Concerned Person",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  controller: dateController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Date",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    child: TextField(
                      controller: startController,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: "Start time",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    child: TextField(
                      controller: endController,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: "End Time",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  controller: purposeController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Purpose",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 220,
                child: ElevatedButton(
                  onPressed: () async {
                    if (personController.text.isEmpty) {
                      functions.errorBox(
                          context, "Please enter your concerned person");
                    } else if (dateController.text.isEmpty) {
                      functions.errorBox(context, "Please enter date");
                    } else if (startController.text.isEmpty) {
                      functions.errorBox(context, "Please enter a start time");
                    } else if (endController.text.isEmpty) {
                      functions.errorBox(context, "Please enter an end time");
                    } else if (purposeController.text.isEmpty) {
                      functions.errorBox(context, "Please enter the purpose");
                    } else if (personController.text == "Joel Gulane" ||
                        personController.text == "Ariel W. Evangelista" ||
                        personController.text == "Christine Joy M. Acosta" ||
                        personController.text == "Errol A. Fuertes" ||
                        personController.text == "Joel P. Gulane") {
                      setState(() {
                        if (personController.text == "Ariel W. Evangelista") {
                          adminName = personController.text;
                          adminEmail = "aevangelista@psu.palawan.edu.ph";
                          adminPhone = "09091965681";
                        } else if (personController.text ==
                            "Christine Joy M. Acosta") {
                          adminName = personController.text;
                          adminEmail = "cjacosta@psu.palawan.edu.ph";
                          adminPhone = "00000000000";
                        } else if (personController.text ==
                            "Errol A. Fuertes") {
                          adminName = personController.text;
                          adminEmail = "eafuertes@psu.palawan.edu.ph";
                          adminPhone = "00000000000";
                        } else if (personController.text == "Joel P. Gulane") {
                          adminName = personController.text;
                          adminEmail = "jgulane@psu.palawan.edu.ph";
                          adminPhone = "09388638054";
                        }
                        functions.submitRequest(
                          adminName,
                          adminEmail,
                          adminPhone,
                          dateController.text,
                          startController.text,
                          endController.text,
                          purposeController.text,
                          "Request Submitted",
                          "Pending",
                        );
                        setState(() {
                          vpPosition = -30;
                          vaPosition = 5000;
                          vrPosition = 5000;
                          vuPosition = 5000;
                        });
                        personController.clear();
                        dateController.clear();
                        startController.clear();
                        endController.clear();
                        purposeController.clear();
                        Navigator.pushNamed(
                            context, VisitorNotificationPage.id);
                      });
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text(
                    "SUBMIT REQUEST",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 5),
              AppBar(
                elevation: 0,
                toolbarHeight: 70,
                backgroundColor: Colors.orange,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, VisitorNotificationPage.id);
                      },
                      icon: Icon(Icons.notifications_active,
                          color: Colors.black, size: 35),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, VisitorHistoryPage.id);
                      },
                      icon: Icon(Icons.history_sharp,
                          color: Colors.black, size: 35),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, VisitorProfilePage.id);
                      },
                      icon: Icon(Icons.person, color: Colors.black, size: 35),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
