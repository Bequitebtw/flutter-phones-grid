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
        body: Container(
          color: Colors.grey,
          child: ListView.builder(
            itemCount: phonesList.length,
            itemBuilder: (BuildContext context, index) {
              return PhoneWidget(
                name: phonesList[index].name,
                model: phonesList[index].model,
                price: phonesList[index].price,
                screenHertz: phonesList[index].screenHertz,
                image: phonesList[index].image,
              );
            },
          ),
        ),
      ),
    );
  }
}

class PhoneWidget extends StatelessWidget {
  PhoneWidget(
      {super.key,
      this.name = "Standart name",
      this.model = "unknown",
      this.price = 0,
      this.screenHertz = 60,
      this.image = 'assets/images/satandart.png'});
  final String name;
  final int price;
  final String model;
  final int screenHertz;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.name,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            height: 150,
            width: 150,
            child: Image(image: AssetImage(this.image)),
          ),
          Text('Стоимость: ${this.price}'),
          Text('Модель: ${this.model}'),
          Text('Герцовка экрана: ${this.screenHertz}')
        ],
      ),
    ));
  }
}
