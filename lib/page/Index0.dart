import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uas_fp/page/Login.dart';

class index0 extends StatefulWidget {
  const index0({Key? key}) : super(key: key);

  @override
  State<index0> createState() => _index1State();
}

class _index1State extends State<index0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 199, 238),
        body: Container(
          margin: EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/maria.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Maria",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: ('Quando-Regular')),
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 30,
                            child: Icon(
                              Icons.home,
                            ),
                          ),
                          Text(
                            "Jalan Pegangsaan Timur Jakarta no.23",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: ('Quando-Regular'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 30,
                            child: Icon(
                              Icons.accessibility_rounded,
                            ),
                          ),
                          Text(
                            "Berat = 50Kg",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: ('Quando-Regular'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 30,
                            child: Icon(
                              Icons.settings_accessibility,
                            ),
                          ),
                          Text(
                            "Tinggi = 170 Cm",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: ('Quando-Regular'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 30,
                            child: Icon(
                              Icons.home,
                            ),
                          ),
                          Text(
                            "Jalan Pegangsaan Timur Jakarta no.23",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: ('Quando-Regular'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        width: 500,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Icon(Icons.email),
                                  ),
                                  Text(
                                    "mariavania@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: ('Quando-Regular'),
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Icon(Icons.phone),
                                  ),
                                  Text(
                                    "086754352512",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: ('Quando-Regular'),
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Ink(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HalamanLoginUtama()));
                            },
                            icon: Icon(
                              Icons.logout_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
