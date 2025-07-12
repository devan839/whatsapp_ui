import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,body: ListView(
    children: [Text("Status",style: TextStyle(color: Colors.white),),SizedBox(width: 20,height: 10,),
    ListTile(
    leading: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://cdn2.iconfinder.com/data/icons/action-states-vol-4-flat/48/Action___States_-_Vol._4-10-512.png",),
    ),
      title: Text("Add Status", style: TextStyle(color: Colors.white,)),
      subtitle: Text("Disappears after 24 hours", style: TextStyle(color: Colors.grey)),



    ),
    ],
    ),

    );


  }
}
