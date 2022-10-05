// To parse this JSON data, do
//
//     final producs = producsFromJson(jsonString);

import 'dart:convert';

List<Producs> producsFromJson(String str) => List<Producs>.from(json.decode(str).map((x) => Producs.fromJson(x)));

String producsToJson(List<Producs> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Producs {
    Producs({
        this.userId,
        this.id,
        this.title,
    });

    int? userId;
    int? id;
    String? title;

    factory Producs.fromJson(Map<String, dynamic> json) => Producs(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
    };
}
