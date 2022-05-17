import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/controller/count_controller.dart';
import 'package:gettest/screens/second.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(context) {

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text("GetX Sample")),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
            child: ElevatedButton(
              child: Text("Go to Other"),
              onPressed: () => Get.to(SecondScreen())
            ),
        ),

    );
  }
}