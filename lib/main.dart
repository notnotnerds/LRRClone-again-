import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:rr_tuner/drive_constants.dart';
import 'nav_drawer.dart';
import 'device_selection_page.dart';

void main() => runApp(
  const MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('RoadRunner Tuner'),
        backgroundColor: Colors.black,
      ),
      body: Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    Image.asset("images/n3_logo.png", width: 170, height: 300),
    const Text("NotNotNerds 12051 Made this"),
    ])
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Fluttertoast.showToast(
              msg: "thanks for reporting this issue",
              toastLength: Toast.LENGTH_SHORT, //duration
              gravity: ToastGravity.BOTTOM,
              webPosition: "center",
            timeInSecForIosWeb: 2,
          );
        },
        child: const Text("Report"),
      ),
    );
  }
}
