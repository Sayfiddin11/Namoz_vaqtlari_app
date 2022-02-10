import 'package:flutter/material.dart';

import '../datas/database.dart';



class Duolar extends StatefulWidget {
  const Duolar({Key? key}) : super(key: key);

  @override
  _DuolarState createState() => _DuolarState();
}

class _DuolarState extends State<Duolar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Duolar",
        ),
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Text("${index + 1}."),
                  title: Text(
                    homePage[index]["name"].toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    homePage[index]["manosi"].toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/duolarmanosi",
                        arguments: homePage[index]);
                  },
                ),
              );
            },
            itemCount: homePage.length),
      ),
    );
  }
}