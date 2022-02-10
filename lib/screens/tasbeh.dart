import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';

class TasbehPage extends StatefulWidget {
  const TasbehPage({Key? key}) : super(key: key);

  @override
  _TasbehPageState createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  String subhanAllah = "Subhanallah";
  String alhamdulillah = "Alhamdulillah";
  String ollohu_Akbar = "Allahu Akbar";
  String none = "";
  int counter = 0;
  int zikr = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Tasbeh"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/masjid3.jpg"),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getProportionScreenHeight(125),
                child: Center(
                  child: Text(
                    none,
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(35),
                        fontWeight: FontWeight.w900,
                        color: Colors.blue.withOpacity(0.8),),
                  ),
                ),
              ),
              CircleAvatar(
                radius: getProportionScreenHeight(30),
                backgroundColor: Colors.white38,
                child: Text(
                  counter.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionScreenHeight(30),fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getProportionScreenHeight(300)),
                child: InkWell(
                  child: CircleAvatar(
                    radius: getProportionScreenHeight(50),
                    backgroundColor: Colors.white38,
                    backgroundImage: const AssetImage("assets/images/finger.png"),
                  ),
                  onTap: () {
                    setState(() {
                      counter += 1;
                      hisolagich();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  hisolagich() {
    if (counter >= 0 && counter <= 33) {
      none = subhanAllah;
    } else if (counter > 33 && counter <= 66) {
      none = alhamdulillah;
    } else if (counter > 66 && counter <= 99) {
      none = ollohu_Akbar;
    } else if (counter >= 99) {
      ollohu_Akbar = none;
      zikr += 1;
      counter = 0;

      setState(() {});
    }
  }
}