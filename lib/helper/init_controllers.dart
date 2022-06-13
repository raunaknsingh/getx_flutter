import 'package:get/get.dart';
import 'package:getxdemo/controller/list_controller.dart';
import 'package:getxdemo/controller/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
