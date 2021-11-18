import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tugas_rs/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rumah Sakit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 15),
            child: const Image(
              image: AssetImage("assets/rs.jpg"),
            ),
          ),
          const Text(
            "SELAMAT DATANG\nDI RUMAH SAKIT ANGGYANISA",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return DashboardRs();
                    }));
                  },
                  child: Container(
                    child: const Text("Masuk"),
                  )),
              ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: Container(
                    child: const Text("Keluar"),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
