import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/couterController.dart';

class Other extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
              "Screens was clicked ${_counterController.counter.value} times!!"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Open Other_Screen!!!"))
        ],
      ),
    );
  }
}
