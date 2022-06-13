import 'package:get/get.dart';

import '../controller/list_controller.dart';
import '../controller/tap_controller.dart';

class InitDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
