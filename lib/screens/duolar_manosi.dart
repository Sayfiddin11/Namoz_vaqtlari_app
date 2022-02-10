import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';



class DuolarManosi extends StatefulWidget {
  var data;
  DuolarManosi({Key? key, this.data}) : super(key: key);

  @override
  _DuolarManosiState createState() => _DuolarManosiState();
}

class _DuolarManosiState extends State<DuolarManosi> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text(widget.data["name"].toString()),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(getProportionScreenHeight(10)),
          child: Text(widget.data["manosi"].toString(),style: TextStyle(fontSize: getProportionScreenHeight(17)),),
        ),
      ),
    );
  }
}