import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:uas_fp/page/Index0.dart';
import 'package:uas_fp/page/Index1.dart';
import 'package:uas_fp/page/Index2.dart';
import 'package:uas_fp/page/Mainhome.dart';

class CariDokter extends StatefulWidget {
  const CariDokter({super.key});

  @override
  State<CariDokter> createState() => _CariDokterState();
  
}

class _CariDokterState extends State<CariDokter> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('dokter');
    // FirebaseFirestore.instance
    //     .collection('dokter')
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((doc) {
    //     print(doc["nama"]);
    //   });
    //   querySnapshot.docs.forEach((doc) {
    //     print(doc["spesialis"]);
    //   });
    // });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 199, 238),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (() {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        }),
                        icon: Icon(Icons.arrow_back_rounded)),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        "CARI DOKTER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: ('Quando-Regular'),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Cari Dokter",
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Colors.blueAccent,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0))),
              ),
              SizedBox(height: 40.0),
              ListView.builder(itemCount: snapshot),
              SizedBox(
                height: 20.0,
              ),
              // InkWell(
              //   onTap: () => {},
              //   child: Column(
              //     children: [
              //       Container(
              //         color: Colors.white,
              //         child: Container(
              //           child: Row(children: [
              //             Container(
              //                 margin: EdgeInsets.all(15),
              //                 child: Image.asset(
              //                   "assets/images/maria.png",
              //                   width: 55,
              //                 )),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Dr Maria Selena Sp.JP",
              //                   style: TextStyle(fontWeight: FontWeight.bold),
              //                 ),
              //                 Text("Dokter Spesialis Jantung dan Paru-Paru")
              //               ],
              //             )
              //           ]),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // InkWell(
              //   onTap: () => {},
              //   child: Column(
              //     children: [
              //       Container(
              //         color: Colors.white,
              //         child: Container(
              //           child: Row(children: [
              //             Container(
              //                 margin: EdgeInsets.all(15),
              //                 child: Image.asset(
              //                   "assets/images/maria.png",
              //                   width: 55,
              //                 )),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Dr Maria Selena Sp.JP",
              //                   style: TextStyle(fontWeight: FontWeight.bold),
              //                 ),
              //                 Text("Dokter Spesialis Jantung dan Paru-Paru")
              //               ],
              //             )
              //           ]),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // InkWell(
              //   onTap: () => {},
              //   child: Column(
              //     children: [
              //       Container(
              //         color: Colors.white,
              //         child: Container(
              //           child: Row(children: [
              //             Container(
              //                 margin: EdgeInsets.all(15),
              //                 child: Image.asset(
              //                   "assets/images/maria.png",
              //                   width: 55,
              //                 )),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   "Dr Maria Selena Sp.JP",
              //                   style: TextStyle(fontWeight: FontWeight.bold),
              //                 ),
              //                 Text("Dokter Spesialis Jantung dan Paru-Paru")
              //               ],
              //             )
              //           ]),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          )),
    );
  }
}
