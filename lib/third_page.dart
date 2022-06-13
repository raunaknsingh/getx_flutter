import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/controller/list_controller.dart';
import 'package:getxdemo/controller/tap_controller.dart';
import 'package:getxdemo/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF89dad0),
                        ),
                        child: Text(
                          "Y value " + controller.y.value.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF89dad0),
                        ),
                        child: Text(
                          "Total value " + controller.z.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        alignment: Alignment.center,
                      )
                    ],
                  )),
              GestureDetector(
                onTap: () {
                  Get.to(MyHomePage());
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
                    "X value " + controller.x.toString(),
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
                  // Get.to(MyHomePage());
                  controller.increaseY();
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
                    "Increase Y",
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
                  // Get.to(MyHomePage());
                  controller.totalXY();
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
                    "Total X+Y",
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
                  // Get.to(MyHomePage());
                  listController.setValues(Get.find<TapController>().z);
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
                    "Save Total",
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
      ),
    );
  }
}
