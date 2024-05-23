import 'package:flutter/material.dart';
import 'package:flutter_shoe/model/list1.dart';
import 'package:flutter_shoe/model/list2.dart';
import 'package:flutter_shoe/model/paint.dart';
import 'package:flutter_shoe/model/shoe_model.dart';
import 'package:flutter_shoe/screen/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.compare_arrows_sharp,
                color: Colors.grey,
              ),
              label: 'compass'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_open_outlined,
                color: Colors.grey,
              ),
              label: 'menu'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cast,
                color: Colors.grey,
              ),
              label: 'cast'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'person'),
        ]),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          ),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView1(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'JUST FOR YOU',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'VIEW ALL',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                )
              ],
            ),
          ),
          ListVIew2(),
        ],
      ),
    );
  }
}
