// To parse this JSON data, do
//
//     final dataCovid = dataCovidFromJson(jsonString);

import 'dart:convert';

List<DataCovid> dataCovidFromJson(String str) => List<DataCovid>.from(json.decode(str).map((x) => DataCovid.fromJson(x)));

String dataCovidToJson(List<DataCovid> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataCovid {
    DataCovid({
        required this.kodeProvinsi,
        // required this.updatedAt,
        required this.provinsi,
        required this.positif,
        required this.dalamPerawatan,
        required this.meninggal,
        required this.sembuh,
        required this.rasioKematian,
        required this.mapId,
    });

    int? kodeProvinsi;
    // DateTime updatedAt;
    String provinsi;
    int? positif;
    int? dalamPerawatan;
    int? meninggal;
    int? sembuh;
    double? rasioKematian;
    String? mapId;

    factory DataCovid.fromJson(Map<String, dynamic> json) => DataCovid(
        kodeProvinsi: json["kode_provinsi"],
        // updatedAt: DateTime.parse(json["updated_at"]),
        provinsi: json["provinsi"],
        positif: json["positif"],
        dalamPerawatan: json["dalam_perawatan"],
        meninggal: json["meninggal"],
        sembuh: json["sembuh"],
        rasioKematian: json["rasio_kematian"].toDouble(),
        mapId: json["map_id"],
    );

    Map<String, dynamic> toJson() => {
        "kode_provinsi": kodeProvinsi,
        // "updated_at": updatedAt.toIso8601String(),
        "provinsi": provinsi,
        "positif": positif,
        "dalam_perawatan": dalamPerawatan,
        "meninggal": meninggal,
        "sembuh": sembuh,
        "rasio_kematian": rasioKematian,
        "map_id": mapId,
    };
}
