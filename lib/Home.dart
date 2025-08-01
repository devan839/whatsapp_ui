import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Calls.dart';
import 'package:whatsapp_ui/Chats.dart';
import 'package:whatsapp_ui/Communities.dart';
import 'package:whatsapp_ui/Settings.dart';
import 'package:whatsapp_ui/Updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Updates(), Calls(), Communities(), Chats(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,showUnselectedLabels: true,
        currentIndex: index,
        onTap
        :(value) {
        setState(() {
          index=value;
        });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.update),
              label: "Updates",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: "Communities"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wechat_rounded), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded), label: "Settings"),
        ],
      ),
      body: pages[index],
    );
  }
}
