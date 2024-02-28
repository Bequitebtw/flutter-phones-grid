import 'package:flutter/material.dart';

class PhoneWidget extends StatelessWidget {
  PhoneWidget(
      {super.key,
      this.name = "Standart name",
      this.model = "unknown",
      this.price = 0,
      this.screenHertz = 60,
      this.image = 'assets/images/standart.png'});
  final String name;
  final int price;
  final String model;
  final int screenHertz;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.name,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Image(image: AssetImage(this.image)),
            ),
          ),
          Text('Стоимость: ${this.price}'),
          Text('Модель: ${this.model}'),
          Text('Герцовка экрана: ${this.screenHertz}')
        ],
      ),
    ));
  }
}
