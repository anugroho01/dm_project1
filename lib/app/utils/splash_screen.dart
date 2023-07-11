import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplasScreen extends StatelessWidget {
  const SplasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: Get.width * 0.75,
            height: Get.width * 0.75,
            //color: Colors.amberAccent,
            child: Lottie.asset("assets/lottie/hello.json"),
          ),
        ),
      ),
    );
  }
}
