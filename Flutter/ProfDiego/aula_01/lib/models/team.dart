import 'package:flutter/material.dart';
import 'championship.dart';

class Team {
  String name;
  String coat_of_arms;
  int points;
  Color color;
  List<Championship> championships = [];

  Team({
    required this.name,
    required this.coat_of_arms,
    required this.points,
    required this.color,
  });
}
