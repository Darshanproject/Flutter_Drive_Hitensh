import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'package:myapp/main.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Name",
                labelText: "Name"),
          ),
          TextField(
            controller: surname,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Surname",
                labelText: "Surname"),
          ),
          TextField(
            controller: email,
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

  void insertdata() {
    var url = "https://database20810.000webhostapp.com/FlutterCrude/insert.php";
    http.post(Uri.parse(url), body: {
      "name": name.text.toString(),
      "surname": surname.text.toString(),
      "email": email.text.toString(),
    });
  }
}
