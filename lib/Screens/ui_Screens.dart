import 'package:flutter/material.dart';
import 'package:jobtask/Components/Colors.dart';
import 'package:jobtask/Components/StaggerComp.dart';
import 'package:jobtask/Components/bottomNavigationBarCompo.dart';

import '../Components/Image_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarCompo(),
      backgroundColor: backGround,
      body: StaggerCompo(),
    );
  }
}
