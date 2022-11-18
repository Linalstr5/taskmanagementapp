import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(
        children: [
        Expanded(
          child: Container(
        color: Colors.red,
      )),
        Expanded(
          child: Container(
        color: Colors.white,
      ),)
      ],
      ));
  }
}
