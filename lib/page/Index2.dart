import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uas_fp/caridokter.dart';

class index2 extends StatefulWidget {
  const index2({Key? key}) : super(key: key);

  @override
  State<index2> createState() => _indexState();
}

class _indexState extends State<index2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 199, 238),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: [
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.airport_shuttle_outlined,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Darurat',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CariDokter()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.supervised_user_circle,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Cari Dokter',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.event_note,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Buat Janji',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.maps_home_work_outlined,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Rumah Sakit Terdekat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.medication_outlined,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Apotik dan Obat',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.live_help,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text(
                      'Kenali Gejalanya',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
