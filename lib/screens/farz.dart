import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';
import '../datas/database.dart';

class FarzAmallar extends StatefulWidget {
  const FarzAmallar({Key? key}) : super(key: key);

  @override
  _FarzAmallarState createState() => _FarzAmallarState();
}

class _FarzAmallarState extends State<FarzAmallar>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int tabvalue = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("5 Farz"),
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                unselectedLabelColor: Colors.teal.shade100,
                controller: _tabController,
                labelColor: Colors.teal.shade800,
                indicatorColor: Colors.teal,
                onTap: (val) {
                  setState(() {
                    tabvalue = val;
                  });
                },
                tabs: const [
                  Tab(
                    text: "Iymon",
                  ),
                  Tab(
                    text: "Namoz",
                  ),
                  Tab(
                    text: "Zakot",
                  ),
                  Tab(
                    text: "Ro'za",
                  ),
                  Tab(
                    text: "Haj",
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Text(
                  farz[tabvalue]["sharhi"].toString(),
                  style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}