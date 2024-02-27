import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:phones/position.dart';
import 'package:flutter/material.dart';

class phone {
  String name;
  int price;
  String model;
  int screenHertz;
  String image;
  phone(this.name, this.price, this.model, this.screenHertz, this.image);
}

List<phone> phonesList = [
  phone("Iphone", 100000, "13", 120, 'assets/images/iphone.jpg'),
  phone("Xiaomi", 110000, "14pro", 120, 'assets/images/xiaomi.jpg'),
  phone("Honor", 30000, "90", 90, 'assets/images/honor.jpg'),
  phone("OnePlus", 60000, "10 pro", 120, 'assets/images/onePlus.jpg'),
  phone("Meizu", 20000, "20", 60, 'assets/images/meizu.jpg'),
  phone("Samsung", 80000, "s23 ultra", 120, 'assets/images/samsung.jpg'),
  phone("Nokia", 3000, "3310", 60, 'assets/images/nokia3310.jpg'),
  phone("Huawei", 40000, "p30 pro", 120, 'assets/images/huawei.jpg'),
  phone("Oppo", 30000, "Find X7", 120, 'assets/images/oppo.jpg'),
  phone("Realme", 35000, "11 pro plus", 60, 'assets/images/realme.jpg'),
  phone("ST", 1000000, "qweqweqwe", 2222, 'assets/images/satandart.png'),
];
