import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_fp/page/Index0.dart';
import 'package:uas_fp/page/Index1.dart';
import 'package:uas_fp/page/Index2.dart';
import 'package:uas_fp/page/first.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 2;

  List<Widget> widgets = [
    index0(),
    Index1(),
    index2(),
    Center(child: Text('Index 3')),
    Center(child: Text('Index 4'))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 199, 238),
        body: widgets[currentIndex],
        bottomNavigationBar: ConvexAppBar(
            height: 50,
            // style: TabStyle.fixed,
            backgroundColor: Color.fromARGB(255, 89, 107, 207),
            items: [
              TabItem(
                icon: Icons.person_outline_sharp,
                title: 'Pengguna',
              ),
              TabItem(icon: Icons.message, title: 'Pesan'),
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.shopping_cart_sharp, title: 'Shop'),
              TabItem(icon: Icons.menu, title: 'Menu'),
            ],
            initialActiveIndex: 2,
            onTap: (int i) => setState(() {
                  currentIndex = i;
                })),
      ),
    );
  }
}
