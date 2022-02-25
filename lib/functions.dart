// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, nullable_type_in_catch_clause, avoid_print, unused_import, duplicate_import

import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:bisita/login_page.dart';
import 'package:bisita/visitor_homepage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
import 'package:bisita/admin_homepage.dart';

Functions functions = Functions();

DocumentSnapshot? userData;
bool? isAdmin;
bool? role;
dynamic visitorName;
dynamic visitorEmail;
dynamic visitorPhone;
dynamic adminName;
dynamic adminEmail;
dynamic adminPhone;
dynamic bisitaUser;
final fbAuth = FirebaseAuth.instance;
final fbStore = FirebaseFirestore.instance;
final fbStorage = FirebaseStorage.instance;

class Functions {
  void getCurrentUser() {
    final user = fbAuth.currentUser;
    if (user != null) {
      bisitaUser = user;
    }
  }

  void register(context, first, middle, last, date, address, phone, email,
      password) async {
    try {
      await fbAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await fbStore
          .collection("Users")
          .doc(fbAuth.currentUser!.email.toString())
          .set(
        {
          "role": role,
          "first": first,
          "middle": middle,
          "last": last,
          "date": date,
          "address": address,
          "phone": phone,
          "email": email,
          "password": password,
        },
      );
      Navigator.pushNamedAndRemoveUntil(
          context, LoginPage.id, (route) => false);
    } catch (msg) {
      errorBox(context, msg);
    }
  }

  void login(context, email, password) async {
    try {
      await fbAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      getCurrentUser();
      DocumentSnapshot data =
          await fbStore.collection("Users").doc(bisitaUser!.email).get();
      userData = data;
      isAdmin = userData!["role"];
      if (isAdmin == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, AdminHomePage.id, (route) => false);
      } else if (isAdmin == false) {
        Navigator.pushNamedAndRemoveUntil(
            context, VisitorHomePage.id, (route) => false);
      }
    } catch (e) {
      errorBox(context, e);
    }
  }

  void errorBox(
    context,
    msg,
  ) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(Icons.error),
              SizedBox(width: 10),
              Text("ERROR"),
            ],
          ),
          content: Text(msg.toString()),
        );
      },
    );
  }

  void submitRequest(
    aName,
    aEmail,
    aPhone,
    date,
    start,
    end,
    purpose,
    activity,
    status,
  ) async {
    await fbStore
        .collection("Users")
        .doc(fbAuth.currentUser!.email)
        .collection("Pending")
        .doc(aEmail)
        .set(
      {
        "vName": "${userData!["first"]} ${userData!["last"]}",
        "vEmail": userData!["email"],
        "vPhone": userData!["phone"],
        "aName": aName,
        "aEmail": aEmail,
        "aPhone": aPhone,
        "date": date,
        "start": start,
        "end": end,
        "purpose": purpose,
        "activity": activity,
        "status": status,
      },
    );
    await fbStore
        .collection("Users")
        .doc(aEmail)
        .collection("Pending")
        .doc(fbAuth.currentUser!.email)
        .set(
      {
        "vName": "${userData!["first"]} ${userData!["last"]}",
        "vEmail": userData!["email"],
        "vPhone": userData!["phone"],
        "aName": aName,
        "aEmail": aEmail,
        "aPhone": aPhone,
        "date": date,
        "start": start,
        "end": end,
        "purpose": purpose,
        "activity": activity,
        "status": status,
      },
    );
  }

  void logout(context) async {
    try {
      fbAuth.signOut();
      Navigator.pushNamedAndRemoveUntil(
          context, LoginPage.id, (route) => false);
    } catch (e) {
      errorBox(context, e);
    }
  }
}
