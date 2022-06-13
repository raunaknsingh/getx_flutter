import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/controller/tap_controller.dart';
import 'package:getxdemo/first_page.dart';
import 'package:getxdemo/second_page.dart';
import 'package:getxdemo/third_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
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
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
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
                  'Tap',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(FirstPage());
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
                  'First Page',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(SecondPage());
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
                  'Second Page',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ThirdPage());
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
                  'Third Page',
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
