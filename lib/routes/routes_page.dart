import 'package:flutter/material.dart';

import '../screens/asosiy_page.dart';
import '../screens/calendart.dart';
import '../screens/duolar.dart';
import '../screens/duolar_manosi.dart';
import '../screens/farz.dart';
import '../screens/hadis.dart';
import '../screens/home_page.dart';
import '../screens/kompass.dart';
import '../screens/namoz_vaqti.dart';
import '../screens/olloh_ismi_manosi.dart';
import '../screens/ollohning_isimlari.dart';
import '../screens/tasbeh.dart';

class GenerateRoute {
  static routerGenerator(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const ShowPage());
      case "home":
        return MaterialPageRoute(builder: (context) => const HomePage1());
      case "/namozvaqt":
        return MaterialPageRoute(builder: (context) => const NamozVaqt());
      case "/tasbeh":
        return MaterialPageRoute(builder: (context) => const TasbehPage());
      case "/ism":
        return MaterialPageRoute(
            builder: (context) => const OllohningIsmlari());
      case "/ismmanosi":
        return MaterialPageRoute(
          builder: (context) => IsmlarManosi(
            malumot: args,
          ),
        );
      case "/duo":
        return MaterialPageRoute(builder: (context) => const Duolar());
      case "/duolarmanosi":
        return MaterialPageRoute(
          builder: (context) => DuolarManosi(
            data: args,
          ),
        );
      case "/hadis":
        return MaterialPageRoute(builder: (context) => const HadisPage());
      case "/farz":
        return MaterialPageRoute(builder: (context) => const FarzAmallar());
      case "/calendar":
        return MaterialPageRoute(builder: (context) => CalendarPage());
      case "/compass":
        return MaterialPageRoute(builder: (context) => CompassPage());
    }
  }
}
