// To parse this JSON data, do
//
//     final wealthSummary = wealthSummaryFromMap(jsonString);

import 'dart:convert';

class WealthSummary {
  WealthSummary({
    this.data,
  });

  final Data data;

  WealthSummary copyWith({
    Data data,
  }) =>
      WealthSummary(
        data: data ?? this.data,
      );

  factory WealthSummary.fromJson(String str) => WealthSummary.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WealthSummary.fromMap(Map<String, dynamic> json) => WealthSummary(
    data: Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "data": data.toMap(),
  };
}

class Data {
  Data({
    this.wealthSummary,
  });

  final List<WealthSummaryElement> wealthSummary;

  Data copyWith({
    List<WealthSummaryElement> wealthSummary,
  }) =>
      Data(
        wealthSummary: wealthSummary ?? this.wealthSummary,
      );

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    wealthSummary: List<WealthSummaryElement>.from(json["wealthSummary"].map((x) => WealthSummaryElement.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "wealthSummary": List<dynamic>.from(wealthSummary.map((x) => x.toMap())),
  };
}

class WealthSummaryElement {
  WealthSummaryElement({
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

  WealthSummaryElement copyWith({
    double cdi,
    double gain,
    double profitability,
    int total,
    int id,
  }) =>
      WealthSummaryElement(
        cdi: cdi ?? this.cdi,
        gain: gain ?? this.gain,
        profitability: profitability ?? this.profitability,
        total: total ?? this.total,
        id: id ?? this.id,
      );

  factory WealthSummaryElement.fromJson(String str) => WealthSummaryElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WealthSummaryElement.fromMap(Map<String, dynamic> json) => WealthSummaryElement(
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
}
