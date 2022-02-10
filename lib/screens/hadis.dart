import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';
import '../datas/database.dart';



class HadisPage extends StatefulWidget {
  const HadisPage({Key? key}) : super(key: key);

  @override
  _HadisPageState createState() => _HadisPageState();
}

class _HadisPageState extends State<HadisPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hadis"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(hadis[index]["nomeri"].toString()),
              children: [
                Padding(
                  padding: EdgeInsets.all(getProportionScreenHeight(12.0)),
                  child: Container(
                      color: Colors.grey.shade200,
                      child: Center(
                        child: Text(hadis[index]["matni"].toString(),style: TextStyle(color: Colors.black,fontSize: getProportionScreenHeight(18)),textAlign: TextAlign.start,),
                      )),
                ),
              ],
            );
          },
          itemCount: hadis.length,
        ),
      ),
    );
  }
}