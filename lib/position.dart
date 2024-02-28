import 'package:flutter/material.dart';
import 'package:phones/phones.dart';

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<PhoneWidget> items = [];
    for (int x = 0; x < phonesList.length; x++) {
      items.add(PhoneWidget(
        name: phonesList[x].name,
        price: phonesList[x].price,
        model: phonesList[x].model,
        screenHertz: phonesList[x].screenHertz,
        image: phonesList[x].image,
      ));
    }
    final gridcounter = 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DNS",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 630,
            child: GridView.count(
              crossAxisCount: gridcounter,
              children: items,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.more_horiz,
          ),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
          focusElevation: 100,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.orange,
          child: Container(
            height: 20.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
