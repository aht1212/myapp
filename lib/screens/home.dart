import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/couterController.dart';
import 'package:myapp/screens/other.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks : ${counterController.counter.value}"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Other());
                  },
                  child: Text("Open Other_Screen!!!"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(Icons.add),
        ));
  }
}
