// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:anyshop/widgets/layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Header"),
      ),
      body: Container(
        child: MasterLayout(
          body: Container(
            child: const Text("Main body"),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
            ),
          ),
          press: () {},
        ),
      ),
    );
  }
}
