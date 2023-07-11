import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController pinUser = TextEditingController();
    TextEditingController nikUser = TextEditingController();
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Lottie.asset("assets/lottie/login1.json"),
              ),
              TextField(
                controller: pinUser,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    label: Text('Input NIK'),
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.blue)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nikUser,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    label: Text('Input PIN'),
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.blue)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  child: Text('Login'))
            ],
          ),
        ],
      )),
    ));
  }
}
