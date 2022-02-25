// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:bisita/functions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PendingContainer extends StatelessWidget {
  PendingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 220,
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder(
        stream: fbStore
            .collection("Users")
            .doc(bisitaUser.email)
            .collection("Pending")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            return Stack(
              children: [
                ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Container(
                                color: Colors.grey,
                                height: 80,
                                width: 120,
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 70,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Visitor: ${snapshot.data!.docs[index]["vName"]}"),
                                    Text("Date: ${snapshot.data!.docs[index]["date"]}"),
                                    Text("Time: ${snapshot.data!.docs[index]["start"]} - ${snapshot.data!.docs[index]["start"]}"),
                                    Text("Purpose: ${snapshot.data!.docs[index]["purpose"]}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 140),
                            SizedBox(
                              height: 30,
                              width: 70,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            SizedBox(
                              height: 30,
                              width: 80,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Resched",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            SizedBox(
                              height: 30,
                              width: 70,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
