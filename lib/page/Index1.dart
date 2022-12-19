import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Index1 extends StatefulWidget {
  const Index1({Key? key}) : super(key: key);

  @override
  State<Index1> createState() => _Index1State();
}

class _Index1State extends State<Index1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 199, 238),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Container(
                child: Text(
                  "HUBUNGI DOKTER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ('Quando-Regular'),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
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
              SizedBox(height: 20.0),
              Container(
                color: Colors.white,
                child: Container(
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                            margin: EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/images/maria.png",
                              width: 55,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Dr Maria Selena Sp.JP",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Dokter Spesialis Jantung dan Paru-Paru")
                          ],
                        )
                      ]),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Image.asset(
                                  "assets/images/telepon.jpg",
                                  width: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Image.asset(
                                  "assets/images/email.png",
                                  width: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Image.asset(
                                  "assets/images/info.jpg",
                                  width: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                /////batas
              ),
            ],
          ),
        ));
  }
}
