import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/controller/count_controller.dart';
import 'package:gettest/screens/home.dart';
import 'package:gettest/screens/third.dart';

class SecondScreen extends StatelessWidget {

  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final CountController controller = Get.put(CountController());
  //CountController controller = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
        appBar: AppBar(
          title: Text("Second"),
          leading: IconButton(
            onPressed: () {
              _onBackPressed();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("${controller.count}")),
              TextButton(
                onPressed: () => Get.to(ThirdScreen()),
                child: Text("Third"),
              ),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: controller.increment
        )
    );
  }

  _onBackPressed() {
    Get.back();
    //Get.offAll(HomeScreen());
  }
}