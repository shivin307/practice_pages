import 'package:get/get.dart';

Future<void> navigateTo(String routeName) async {
  await Get.toNamed(routeName);
}
