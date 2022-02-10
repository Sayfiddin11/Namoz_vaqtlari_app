import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_vaqti/routes/routes_page.dart';


import 'model/namoz_model.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NamozVaqtiApiAdapter());
  Hive.registerAdapter(TimesAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) => GenerateRoute.routerGenerator(settings),
    );
  }
}