import 'package:covid_app/models/data_covid.dart';
import 'package:flutter/material.dart';

class DetailProvinsi extends StatelessWidget {
  DetailProvinsi({Key? key, required this.provinsi}) : super(key: key);
  DataCovid provinsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(provinsi.provinsi),
      ),
    );
  }
}
