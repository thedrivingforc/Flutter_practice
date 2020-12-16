import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Mritunjay"),
              accountEmail: Text("mritrunjay@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1510552776732-03e61cf4b144?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Ym95fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mritunjay"),
            subtitle: Text("App Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Mail At"),
            subtitle: Text("mritrunjay@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Ritu"),
            subtitle: Text("App Reviewer"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
