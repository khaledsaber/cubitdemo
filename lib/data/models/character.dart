import 'package:flutter/material.dart';

class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
  late String image;
  late List<String> episodes;
  late String url;
  late DateTime created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.episodes,
    required this.url,
    required this.created,
  });

  Character.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    type = json["type"];
    gender = json["gender"];
    image = json["image"];
    url = json["url"];
    created = DateTime.parse(json["created"]);
  }
}
