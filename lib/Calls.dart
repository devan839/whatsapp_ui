import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.more_horiz),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [CircleAvatar(backgroundColor:Colors.green,child: Icon(Icons.add,size: 15,),radius: 10,)],
      ),floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.phone_callback_rounded),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Text(
            "Calls",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.black12,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none
              ),
              filled: true,
              hint: Text("Search"),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "Favourites",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          ListTile(
            leading: Icon(Icons.add, color: Colors.grey),
            title: Text(
              "Add Favourites",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Od9TSBd76ODEva4CkTh5we6aL6HVGyylXQ&s",
              ),
            ),
            title: Text("David Beckam", style: TextStyle(color: Colors.grey)),
            subtitle: Row(
              children: [
                Icon(Icons.phone),
                Text("Missed", style: TextStyle(color: Colors.grey)),
              ],
            ),
            trailing: Text("yesteray", style: TextStyle(color: Colors.grey)),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PaoloMaldini.jpg/200px-PaoloMaldini.jpg",
              ),
            ),
            title: Text("Maldini", style: TextStyle(color: Colors.grey)),
            subtitle: Row(
              children: [
                Icon(Icons.photo_camera_front),
                Text("Incoming", style: TextStyle(color: Colors.grey)),
              ],
            ),
            trailing: Text("yesteray", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
