import 'package:flutter/material.dart';
import 'main.dart';
import 'device_selection_page.dart';
import 'drive_constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('notnotnerds.tk'),
            accountEmail: const Text('notnotnerds@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/n3_logo.png',
                  //fit: BoxFit.cover,
                  //width: 90,
                  //height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text("Home Page"),
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const MyHomePage())
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage("assets/images/chub.webp"),
            ),
            title: const Text("Device Selection"),
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const SelectionPage())
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.heat_pump,
            ),
            title: const Text("Drive Constants"),
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const DriveConstants())
              );
            },
          )
        ],
      ),
    );
  }
}