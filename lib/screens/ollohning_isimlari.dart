import 'package:flutter/material.dart';

import '../core/constant/size_config.dart';
import '../datas/database.dart';

class OllohningIsmlari extends StatefulWidget {
  const OllohningIsmlari({Key? key}) : super(key: key);

  @override
  _OllohningIsmlariState createState() => _OllohningIsmlariState();
}

class _OllohningIsmlariState extends State<OllohningIsmlari> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Asmoul husno"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Text("${index + 1}"),
                  title: Text(
                    ismlar[index]["oqilishi"].toString(),
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(20),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    ismlar[index]["tarjimasi"].toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    ismlar[index]["arabcha"].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/ismmanosi",arguments: ismlar[index]);
                  },
                ),
              );
            },
            itemCount: ismlar.length,
          ),
        ),
      ),
    );
  }
}