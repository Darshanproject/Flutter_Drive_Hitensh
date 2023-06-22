import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  TextEditingController name_Controller = TextEditingController();
  TextEditingController surname_Controller = TextEditingController();
  TextEditingController email_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextField(
            controller: name_Controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Name",
                labelText: "Name"),
          ),
          TextField(
            controller: surname_Controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Surname",
                labelText: "Surname"),
          ),
          TextField(
            controller: email_Controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Email",
                labelText: "Email"),
          ),
          MaterialButton(
              child: Text("Add Data"),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyHome()));
              }),
        ],
      ),
    );
  }
}
