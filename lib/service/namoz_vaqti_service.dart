import 'dart:io';
import 'package:hive/hive.dart';
import 'package:dio/dio.dart';

import 'package:path_provider/path_provider.dart';

import '../model/namoz_model.dart';
import '../screens/namoz_vaqti.dart';

class Serive_NAmozVaqti {
  static List datas = [];
  static int day = DateTime.now().day;
  static int month = DateTime.now().month;
  static Future<List<NamozVaqtiApi>> getDataNamozVaqti() async {
    await openPath();
    Response? response;
    String region = popupMenu_value;
    try {
      response = await Dio().get(
          "https://namozvaqti.herokuapp.com/api/monthly?region=$region&month=$month");

      await putdata(response.data);
      List myData = box!.values.toList();
      if (myData.isEmpty) {
        datas.add('nodata');
      } else {
        datas = myData;
      }
    } catch (e) {

    }

    return (response!.data as List)
        .map((e) => NamozVaqtiApi.fromJson(e))
        .toList();
  }

  static Box? box;
  static Future openPath() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox("namozvaqti");
    return;
  }

  static putdata(var data) async {
    await box!.clear();
    for (var malumot in data) {
      if (malumot["day"] == day) {
        await box!.add(malumot);
      }
    }

  }
}