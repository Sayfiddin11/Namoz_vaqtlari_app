
import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';
import '../service/namoz_vaqti_service.dart';


class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePageState1 createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  @override
  void initState() {
    super.initState();
    Serive_NAmozVaqti.getDataNamozVaqti();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text(
          "Namoz vaqtlari",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Serive_NAmozVaqti.getDataNamozVaqti();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.green.withOpacity(0.3),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(getProportionScreenHeight(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Namozvaqt(),
                          onTap: () {
                            Navigator.pushNamed(context, "/namozvaqt");
                          },
                        ),
                        InkWell(
                          child: qiblaCompass(),
                          onTap: () {
                            Navigator.pushNamed(context, "/compass");
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(getProportionScreenHeight(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Quron(),
                          onTap: () {},
                        ),
                        InkWell(
                          child: masjidlar(),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(getProportionScreenHeight(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: tasbeh(),
                          onTap: () {
                            Navigator.pushNamed(context, "/tasbeh");
                          },
                        ),
                        InkWell(
                          child: duolar(),
                          onTap: () {
                            Navigator.pushNamed(context, "/duo");
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(getProportionScreenHeight(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: calendar(),
                          onTap: () {
                            Navigator.pushNamed(context, "/calendar");
                          },
                        ),
                        InkWell(
                          child: hadis(),
                          onTap: () {
                            Navigator.pushNamed(context, "/hadis");
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(getProportionScreenHeight(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: nameofAllah(),
                          onTap: () {
                            Navigator.pushNamed(context, "/ism");
                          },
                        ),
                        InkWell(
                          child: farzamallar(),
                          onTap: () {
                            Navigator.pushNamed(context, "/farz");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container farzamallar() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/images/farz.jpg"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Center(
                child: Text(
                  "5 Farz",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container nameofAllah() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                    image: AssetImage("assets/images/Allah.webp")),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Text(
                "  Allohning  99  ismi ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container hadis() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                    image: AssetImage("assets/images/hadis.png")),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: bottomradius(),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Hadis",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container calendar() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                    image: AssetImage("assets/images/calendar.png")),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Center(
                child: Text(
                  "Calendar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container duolar() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: topradius(),
                image:  const DecorationImage(
                  image:   AssetImage("assets/images/duolar.webp")

                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Center(
                child: Text(
                  "Duolar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tasbeh() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: topradius(),
                image:  const DecorationImage(
                    image:  AssetImage("assets/images/tasbeh.jpg")    ,

                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Center(
                child: Text(
                  "Tasbeh",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container masjidlar() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                  image:     AssetImage("assets/images/namoz_vaqtlari.jpg")
                     
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: bottomradius(), color: Colors.white),
                child: const Center(
                  child: Text(
                    "Masjidlar",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Container Quron() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(1)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                  image:     AssetImage("assets/images/quron.png")
                      
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: bottomradius(), color: Colors.white),
              child: const Center(
                child: Text(
                  "Qur'on",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container qiblaCompass() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(1),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: topradius(),
                image: const DecorationImage(
                  image:    AssetImage("assets/images/compass.jpg")
                      
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: bottomradius()),
              child: const Center(
                child: Text(
                  "Qibla Compass",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Namozvaqt() {
    return Container(
      height: getProportionScreenHeight(145),
      width: getProportionScreenWidth(165),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(1),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: topradius(),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/images/namoz.png")
                      
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: bottomradius(),
              ),
              child: const Center(
                child: Text(
                  "Namoz Vaqtlari",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BorderRadius topradius() {
    return const BorderRadius.only(
        topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0));
  }

  BorderRadius bottomradius() {
    return const BorderRadius.only(
      bottomLeft: Radius.circular(15.0),
      bottomRight: Radius.circular(15.0),
    );
  }
}
