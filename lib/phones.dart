import 'dart:ui';
import 'package:phones/position.dart';
import 'package:flutter/material.dart';

class phone {
  String name;
  int price;
  String model;
  int screenHertz;
  phone(this.name, this.price, this.model, this.screenHertz);
}

List<phone> phonesList = [
  phone(
    "Iphone",
    100000,
    "13",
    120,
  ),
  phone("Xiaomi", 110000, "14pro", 120),
  phone("Honor", 30000, "90", 90),
  phone("OnePlus", 60000, "10 pro", 120),
  phone("Meizu", 20000, "20", 60),
  phone("Samsung", 80000, "s23 ultra", 120),
  phone("Nokia", 3000, "3310", 60),
  phone("Huawei", 40000, "p30 pro", 120),
  phone("Oppo", 30000, "Find X7", 120),
  phone("Realme", 35000, "11 pro plus", 60),
];
