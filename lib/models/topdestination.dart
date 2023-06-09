import 'package:flutter/material.dart';

class IconModel {
  final IconData iconData;

  IconModel({required this.iconData});
}

class TopDesCard {
  int id;
  String name;
  String imageUrl;
  String location;
  IconModel icon;
  bool isLove;

  TopDesCard({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.icon,
    this.isLove = false,
  });
}
