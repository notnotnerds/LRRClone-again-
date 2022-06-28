
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'nav_drawer.dart';
var isChub=true;
String chubIs="Control Hub";

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  _loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      final _isChub = preferences.getBool("usingChub");
      isChub=_isChub!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('RoadRunner Tuner'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const Text("Choose your device"),
      Transform.scale(
        scale: 5,
        child: Switch(
          value: isChub,
          activeThumbImage: const AssetImage("assets/images/chub.webp"),
          inactiveThumbImage: const AssetImage("assets/images/android.jpg"),

          onChanged: (value) {
            setState(() {
              isChub = value;
              if(isChub){
                chubIs="Control Hub";
              }
              else{
                chubIs="Android Phone";
              }
              _persistData() async {
                SharedPreferences preferences = await SharedPreferences.getInstance();
                await preferences.setBool("usingChub", isChub);
              }
            });
          },
        ),
      ),
        Text(chubIs)
        ],
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
