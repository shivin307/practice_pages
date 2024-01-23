import 'package:dgsea/controller/home_controller.dart';
import 'package:get/get.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
