import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  late List list;

  Items({required this.list});
  //const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(list[i]["name"]),
          subtitle: Text(list[i]["email"]),
          leading: Text(list[i]["id"]),
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => 
          Details(list: list,index: i))),
        );
      },
    );
  }
}
