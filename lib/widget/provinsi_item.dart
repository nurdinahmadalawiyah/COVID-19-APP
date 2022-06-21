import 'package:covid_app/models/data_covid.dart';
import 'package:covid_app/screen/detail_provinsi.dart';
import 'package:flutter/material.dart';

class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({Key? key, required this.dataProvinsi}) : super(key: key);
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProvinsi(provinsi: dataProvinsi,),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataProvinsi.provinsi,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text("Jumlah Kasus"),
            const SizedBox(height: 5),
            Text(
              dataProvinsi.positif.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
