// To parse this JSON data, do
//
//     final wealthSummary = wealthSummaryFromMap(jsonString);

import 'dart:convert';

class WealthSummaryModel {
  WealthSummaryModel({
    this.cdi,
    this.gain,
    this.profitability,
    this.total,
    this.id,
  });

  final double cdi;
  final double gain;
  final double profitability;
  final int total;
  final int id;

  WealthSummaryModel copyWith({
    double cdi,
    double gain,
    double profitability,
    int total,
    int id,
  }) =>
      WealthSummaryModel(
        cdi: cdi ?? this.cdi,
        gain: gain ?? this.gain,
        profitability: profitability ?? this.profitability,
        total: total ?? this.total,
        id: id ?? this.id,
      );

  factory WealthSummaryModel.fromJson(String str) => WealthSummaryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WealthSummaryModel.fromMap(Map<String, dynamic> json) => WealthSummaryModel(
    cdi: json["cdi"].toDouble(),
    gain: json["gain"].toDouble(),
    profitability: json["profitability"].toDouble(),
    total: json["total"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "cdi": cdi,
    "gain": gain,
    "profitability": profitability,
    "total": total,
    "id": id,
  };

  static List<WealthSummaryModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<WealthSummaryModel>((item) => WealthSummaryModel.fromMap(item))
        .toList();
  }

}
