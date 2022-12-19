import 'package:flutter/material.dart';
import 'package:uas_fp/page/Mainhome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uas_fp/page/Login.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Halaman Daftar',
    home: HalamanDaftarUtama(),
  ));
}

class HalamanDaftarUtama extends StatefulWidget {
  const HalamanDaftarUtama({Key? key}) : super(key: key);

  @override
  State<HalamanDaftarUtama> createState() => _HalamanDaftarUtamaState();
}

class _HalamanDaftarUtamaState extends State<HalamanDaftarUtama> {
  bool visibilityPass = false;
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController teleponController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('Pemakai Aplikasi');
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Halaman Pendaftaran'),
      // ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 177, 199, 238),
          ),
          child: Column(children: [
            SizedBox(height: 35),
            Text(
              'DAFTAR',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: ('Quando-Regular')),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0),
              child: Column(children: [
                TextFormField(
                  controller: namaController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan Nama Anda",
                      labelText: "Nama Lengkap",
                      labelStyle: MaterialStateTextStyle.resolveWith(
                          (Set<MaterialState> states) {
                        final Color color = states.contains(MaterialState.error)
                            ? Theme.of(context).errorColor
                            : Colors.black54;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      }),
                      prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan Username Anda",
                      labelText: "Username",
                      labelStyle: MaterialStateTextStyle.resolveWith(
                          (Set<MaterialState> states) {
                        final Color color = states.contains(MaterialState.error)
                            ? Theme.of(context).errorColor
                            : Colors.black54;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      }),
                      prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan E-mail Anda",
                      labelText: "E-mail",
                      labelStyle: MaterialStateTextStyle.resolveWith(
                          (Set<MaterialState> states) {
                        final Color color = states.contains(MaterialState.error)
                            ? Theme.of(context).errorColor
                            : Colors.black54;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      }),
                      prefixIcon: Icon(Icons.mail)),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: teleponController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan No Telepon Anda",
                      labelText: "No Telepon",
                      labelStyle: MaterialStateTextStyle.resolveWith(
                          (Set<MaterialState> states) {
                        final Color color = states.contains(MaterialState.error)
                            ? Theme.of(context).errorColor
                            : Colors.black54;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      }),
                      prefixIcon: Icon(Icons.person_add_alt_1_rounded)),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: passController,
                  obscureText: !visibilityPass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan Password Anda",
                      labelText: "Password",
                      labelStyle: MaterialStateTextStyle.resolveWith(
                          (Set<MaterialState> states) {
                        final Color color = states.contains(MaterialState.error)
                            ? Theme.of(context).errorColor
                            : Colors.black54;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      }),
                      prefixIcon: Icon(Icons.key_sharp),
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
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 130,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      if (namaController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          passController.text.isEmpty ||
                          teleponController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Field Wajib di isi !!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          backgroundColor: Colors.black,
                        ));
                      } else {
                        users.add({
                          'Nama Lengkap': namaController.text,
                          'Username': usernameController.text,
                          'Password': passController.text,
                          'Email': emailController.text,
                          'Telepon': int.tryParse(teleponController.text) ?? 0,
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanLoginUtama()));
                      }
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                          color: Colors.black, fontFamily: ('Quando-Regular')),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(43, 191, 254, 1.0),
                      shape: StadiumBorder(),

                      //  primary: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text("Atau masuk dengan", style: TextStyle()),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HalamanLoginUtama()));
                        },
                        child: Image.asset(
                          "assets/images/google.png",
                          fit: BoxFit.cover,
                          height: 40,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
