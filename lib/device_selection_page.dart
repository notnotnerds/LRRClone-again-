import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nav_drawer.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

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
                const Text("Choose your device"),
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
