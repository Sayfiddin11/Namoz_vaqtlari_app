
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../core/constant/size_config.dart';
import '../service/namoz_vaqti_service.dart';


late String popupMenu_value = "toshkent";

class NamozVaqt extends StatefulWidget {
  const NamozVaqt({Key? key}) : super(key: key);

  @override
  _NamozVaqtState createState() => _NamozVaqtState();
}

class _NamozVaqtState extends State<NamozVaqt> {
  List name = ["Bomdod", "Quyosh", "Peshin", "Asr", "Shom", "Hufton"];

  var region;

  @override
  void initState() {
    super.initState();
    Serive_NAmozVaqti.box;
    region = Serive_NAmozVaqti.box!.values.toList();

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.teal,
        title: const Text("Namoz Vaqtlari"),
        actions: [
          popupMenu(),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(),
        child: ValueListenableBuilder<Box>(
          valueListenable: Hive.box("namozvaqti").listenable(),
          builder: (context, box, __) {
            final datas = box.values.toList();
            region = Serive_NAmozVaqti.box!.values.toList();
            List vaqt = [
              datas[0]["times"]["tong_saharlik"],
              datas[0]["times"]["quyosh"],
              datas[0]["times"]["peshin"],
              datas[0]["times"]["asr"],
              datas[0]["times"]["shom_iftor"],
              datas[0]["times"]["hufton"],
            ];
            return Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider("https://i.pinimg.com/originals/66/c7/32/66c732d1f66b567dabdd36e99009c44c.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: getProportionScreenHeight(20)),
                    child: Container(
                      height: getProportionScreenHeight(200),
                      width: getProportionScreenWidth(350),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                              "https://www.clipartmax.com/png/full/153-1536417_mosque-silhouette-in-flat-style-free-vector-mosque-silhouette-in-flat-style.png"),
                        ),
                        color: Colors.white38,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            getProportionScreenHeight(12.0),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: getProportionScreenHeight(150),
                                left: getProportionScreenWidth(220)),
                            child: Text(region[0]["region"].toString()),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(200)),
                            child: Text(region[0]["date"]
                                .toString()
                                .substring(0, 10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(490),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                            EdgeInsets.all(getProportionScreenHeight(10.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      getProportionScreenHeight(11.0)),
                                ),
                              ),
                              child: ListTile(

                                leading: Icon(

                                  Icons.notifications,
                                  size: getProportionScreenHeight(26),
                                ),
                                title: Text(
                                  name[index].toString(),
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(20),
                                      fontWeight: FontWeight.w800),
                                ),
                                trailing: Text(
                                  vaqt[index].toString(),
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(20),
                                      fontWeight: FontWeight.w800),
                                ),
                              )
                            ),
                          );
                        },
                        itemCount: vaqt.length),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  PopupMenuButton<String> popupMenu() {
    return PopupMenuButton(
      onSelected: (val) async {
        setState(() {
          popupMenu_value = val.toString();

          Serive_NAmozVaqti.getDataNamozVaqti();
        });
      },
      itemBuilder: (context) => [
        const PopupMenuItem(
          child: Text("Toshkent"),
          value: "toshkent",
        ),
        const PopupMenuItem(
          child: Text("Andijon"),
          value: "andijon",
        ),
        const PopupMenuItem(
          child: Text("Qarshi"),
          value: "qarshi",
        ),
        const PopupMenuItem(
          child: Text("Namangan"),
          value: "namangan",
        ),
        const PopupMenuItem(
          child: Text("Farg'ona"),
          value: "quva",
        ),
        const PopupMenuItem(
          child: Text("Qo'qon"),
          value: "qo'qon",
        ),
        const PopupMenuItem(
          child: Text("Guliston"),
          value: "guliston",
        ),
        const PopupMenuItem(
          child: Text("Jizzax"),
          value: "jizzax",
        ),
        const PopupMenuItem(
          child: Text("Samarqand"),
          value: "samarqand",
        ),
        const PopupMenuItem(
          child: Text("Navoiy"),
          value: "navoiy",
        ),
        const PopupMenuItem(
          child: Text("Buxoro"),
          value: "buxoro",
        ),
        const PopupMenuItem(
          child: Text("Termiz"),
          value: "termiz",
        ),
        const PopupMenuItem(
          child: Text("Urganch"),
          value: "urganch",
        ),
        const PopupMenuItem(
          child: Text("Nukus"),
          value: "nukus",
        ),
      ],
    );
  }
}