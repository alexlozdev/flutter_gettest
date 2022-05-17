import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/controller/count_controller.dart';

class ThirdScreen extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final CountController controller = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
        body: Center(
            child: Text("${controller.count}")
        )
    );
  }
}