import 'package:flutter/material.dart';

class Option {
  final String title;
  final String iconName;

  Option({
    @required this.title,
    @required this.iconName,
  });
}

List<Option> options = [
  Option(title: "Espresso", iconName: "assets/espresso.png"),
  Option(title: "Cappuccino", iconName: "assets/cappuccino.png"),
  Option(title: "Macciato", iconName: "assets/macciato.png"),
  Option(title: "Mocha", iconName: "assets/mocha.png"),
  Option(title: "Latte", iconName: "assets/lattee.png"),
];
