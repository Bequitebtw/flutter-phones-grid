import 'package:flutter/material.dart';
import 'package:phones/main.dart';
import 'package:phones/phones.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Phones",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[PhoneWidget(), PhoneWidget()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[PhoneWidget(), PhoneWidget()],
            ),
          ],
        ),
      ),
    );
  }
}

class PhoneWidget extends StatelessWidget {
  const PhoneWidget(
      {super.key,
      this.name = "Standart name",
      this.model = "unknown",
      this.price = 0,
      this.screenHertz = 60});

  final String name;
  final int price;
  final String model;
  final int screenHertz;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Text(model),
        ],
      ),
    ));
  }
}
