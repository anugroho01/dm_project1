import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/intoduction_controller.dart';

class IntoductionView extends GetView<IntoductionController> {
  const IntoductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          child: Lottie.asset("assets/lottie/login1.json"),
        )
      ],
    )));
  }
}
