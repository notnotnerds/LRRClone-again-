import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nav_drawer.dart';

class DriveConstants extends StatelessWidget {
  const DriveConstants({Key? key}) : super(key: key);

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
                Image.asset("assets/images/baby-rr.png", width: 300, height: 300),
                const Text("Drive Constants page"),
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
