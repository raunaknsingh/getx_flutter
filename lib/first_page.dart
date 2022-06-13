import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text('First Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            GetBuilder<TapController>(
              builder: (_) {
                return Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0),
                  ),
                  child: Text(
                    controller.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  alignment: Alignment.center,
                );
              },
            ),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Text(
                  'Decrease x',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
