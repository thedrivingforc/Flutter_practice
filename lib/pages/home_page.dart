import 'package:flutter/material.dart';
import 'package:mtechtutorial/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:mtechtutorial/pages/login_page.dart';
import 'dart:convert';
import 'package:mtechtutorial/utils/constants.dart';
// import 'package:mtechtutorial/name_card_widget.dart';

class Homepage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomepageState createState() => _HomepageState();
}

// !Changed to stateful widget
class _HomepageState extends State<Homepage> {
  // var myText = "Change My Text";
  // TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {}); // Direct change of text on press
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
