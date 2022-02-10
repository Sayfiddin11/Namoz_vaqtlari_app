import 'package:flutter/material.dart';

import 'package:splash_screen_view/SplashScreenView.dart';

import 'asosiy_page.dart';



class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  void initState() {
    super.initState();
    // ServiseTime.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomePage1(),
      duration: 4000,
      imageSize: 300,
      imageSrc: "assets/images/rasm4.png",
      text: "Namoz Vaqti",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      colors: const [
        Colors.black,
        Colors.green,
        Colors.yellow,
      ],
      backgroundColor: Colors.white,
    );
  }
}