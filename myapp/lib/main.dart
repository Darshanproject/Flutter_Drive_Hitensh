import 'package:flutter/material.dart';
import 'package:myapp/Screens/add.dart';

void main() {
  runApp(MaterialApp(
    title: "Online database",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JsonParsing"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Add_Screen()));
      }),
    );
  }
}
