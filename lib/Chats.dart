import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      leading: Icon(Icons.more_horiz),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      centerTitle: true,
      actions: [
        Icon(Icons.camera_alt_rounded),
        SizedBox(width: 5),
        Icon(Icons.add_circle, color: Colors.green),
      ],
    ), floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message_rounded),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [Text("Chats",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
      ),  TextField(
          decoration: InputDecoration(
            fillColor: Colors.black12,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide.none
            ),
            filled: true,
            hint: Text("Search"),
          ),
        ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Od9TSBd76ODEva4CkTh5we6aL6HVGyylXQ&s",
              ),
            ),
            title: Text("David Beckam", style: TextStyle(color: Colors.grey)),
            subtitle: Text("hy", style: TextStyle(color: Colors.grey)),
            trailing: Text("yesteray", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
