import 'dart:convert';

import 'package:covid_app/models/data_covid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {
  List<DataCovid> dataProvinsi = [];

  Future<void> fetchData() async {
    String url = 'https://banuacoders.com/api/pico/provinsi';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List extractData = (jsonDecode(response.body))['data'];
      for (var data in extractData) {
        dataProvinsi.add(
          DataCovid(
            kodeProvinsi: data['kodeProvinsi'],
            // updatedAt: data['updatedAt'],
            provinsi: data['provinsi'],
            positif: data['positif'],
            dalamPerawatan: data['dalamPerawatan'],
            meninggal: data['meninggal'],
            sembuh: data['sembuh'],
            rasioKematian: data['rasioKematian'],
            mapId: data['mapId'],
          ),
        );
      }
      print(dataProvinsi[0].provinsi);
    }
  }
}
