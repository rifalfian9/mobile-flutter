import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uas_fp/page/Mainhome.dart';
import 'package:uas_fp/page/register.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Halaman Login',
    home: HalamanLoginUtama(),
  ));
}

class HalamanLoginUtama extends StatefulWidget {
  const HalamanLoginUtama({Key? key}) : super(key: key);

  @override
  State<HalamanLoginUtama> createState() => _HalamanLoginUtamaState();
}

class _HalamanLoginUtamaState extends State<HalamanLoginUtama> {
  bool visibilityPass = false;
  final String myUser = '1';
  final String myPass = '1';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  bool _isChecked = false;
  // HalamanLoginUtama({required this.username});

  // @override
  // Future getdata() async {
  //   QuerySnapshot snapshot =
  //   await FirebaseFirestore.instance.collection("Pemakai Aplikasi"),get();
  // }

  // void initState() {
  //   datas = getdata(datauser());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    //get data
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('Pemakai Aplikasi');

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 199, 238),
        body: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          height: double.infinity,
          child: Container(
              // color: Color.fromARGB(255, 177, 199, 238),
              child: Column(
            children: [
              ////////////////
              // FutureBuilder<QuerySnapshot>(
              //     future: users.get(),
              //     builder: ( _, snapshot) {
              //       if (snapshot.hasData ) {
              //         return Column(
              //           children: snapshot.data.map((e) => Card(e.data()['username'], e.data()["password"])).toList(),
              //         );

              //       }
              //       return Text('maaf');
              //     }),

              ///
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  ' LOGIN ',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Quando-Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 5),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      controller: cUser,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0),
                            borderRadius: BorderRadius.circular(7)),
                        labelText: 'Email atau Username',
                        hintText: 'Input Username atau Email Anda',
                        prefixIcon: Icon(Icons.person),
                        labelStyle: MaterialStateTextStyle.resolveWith(
                            (Set<MaterialState> states) {
                          final Color color =
                              states.contains(MaterialState.error)
                                  ? Theme.of(context).errorColor
                                  : Colors.black38;
                          return TextStyle(color: color, letterSpacing: 1.3);
                        }),
                      ),
                    ),
                  ),
                  TextField(
                    controller: cPass,
                    obscureText: !visibilityPass,
                    decoration: InputDecoration(
                        fillColor: Color.fromRGBO(204, 255, 229, 1.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0),
                            borderRadius: BorderRadius.circular(7)),
                        labelText: 'Password',
                        hintText: 'Input Password Anda',
                        prefixIcon: Icon(Icons.key_rounded),
                        labelStyle: MaterialStateTextStyle.resolveWith(
                            (Set<MaterialState> states) {
                          final Color color =
                              states.contains(MaterialState.error)
                                  ? Theme.of(context).errorColor
                                  : Colors.black38;
                          return TextStyle(color: color, letterSpacing: 1.3);
                        }),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibilityPass = !visibilityPass;
                              });
                            },
                            icon: visibilityPass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off))),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 255, 251, 251),
                                  width: 0),
                              borderRadius: BorderRadius.circular(5)),
                          child: Checkbox(
                              value: _isChecked,
                              checkColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  this._isChecked = value!;
                                });
                              })),
                      SizedBox(width: 10),
                      Text(
                        'Ingat Saya',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(width: 80),
                      Text(
                        'Lupa Password ?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          CekLogin(context);
                          if (cUser.text == myUser && cPass.text == myPass) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          }
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              // color: Colors.black,
                              ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          //  primary: Colors.white,
                        ),
                      ))
                ]),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Text(
                      "Belum punya akun ?",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'Quando'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanDaftarUtama()));
                      },
                      child: Text(
                        "Daftar Disini",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
        ));
  }

  void CekLogin(BuildContext context) {
    if (cUser.text == myUser && cPass.text == myPass) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Login Berhasil'),
        backgroundColor: Colors.black,
      ));
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('User dan Password Harus Diisi'),
        backgroundColor: Colors.black,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('User dan Password Anda Salah....'),
        backgroundColor: Colors.black,
      ));
    }
  }
}


//  GridView.count(
//           padding: const EdgeInsets.all(25),
//           crossAxisCount: 2,
//           children: [
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.airport_shuttle_outlined,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Darurat',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.supervised_user_circle,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Cari Dokter',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.event_note,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Buat Janji',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.maps_home_work_outlined,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Rumah Sakit Terdekat',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.medication_outlined,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Apotik dan Obat',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Card(
//               margin: const EdgeInsets.all(15),
//               child: InkWell(
//                 onTap: () {},
//                 splashColor: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const <Widget>[
//                       Icon(
//                         Icons.live_help,
//                         size: 50,
//                         color: Colors.blue,
//                       ),
//                       Text(
//                         'Kenali Gejalanya',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueAccent,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: ConvexAppBar(
//           color: Color.fromARGB(255, 89, 107, 207),
//           items: [
//             TabItem(
//               icon: Icons.person_outline_sharp,
//               title: 'Pengguna',
//             ),
//             TabItem(icon: Icons.message, title: 'Pesan'),
//             TabItem(icon: Icons.home, title: 'Home'),
//             TabItem(icon: Icons.shopping_cart_sharp, title: 'Shop'),
//             TabItem(icon: Icons.menu, title: 'Menu'),
//           ],
//         ),