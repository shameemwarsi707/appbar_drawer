import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red.shade400,
      title: Text('List'),
      actions: <Widget>[
        IconButton(onPressed: ()=>debugPrint("Item Search"), icon: Icon(Icons.search),),
        IconButton(onPressed: ()=>debugPrint("Member Add"), icon: Icon(Icons.add_box),),
        IconButton(onPressed: ()=>debugPrint("Selected Member of Call"), icon: Icon(Icons.add_call),),
      ],
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Text('List Setting'),
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
          ListTile(
            title: Text("Active Member"),
            onTap: ()=>debugPrint("Active Member Selected"),
          ),
          ListTile(
            title: Text("Lazy Member"),
            onTap: ()=>debugPrint("Lazy Member Selected"),
          ),
        ],
      ),
    ),
    backgroundColor: Colors.white,
  ),
)

);

