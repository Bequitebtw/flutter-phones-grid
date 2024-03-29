import 'package:flutter/material.dart';
import 'package:phones/phones.dart';
import 'package:phones/phoneWidget.dart';

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
        body: Container(
          height: 630,
          child: GridView.count(
            crossAxisCount: gridcounter,
            children: items,
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
