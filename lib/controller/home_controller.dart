import 'package:get/get.dart';

class HomeController extends GetxController {
  // Dummy data for demonstration
  RxList<String> items = List.generate(10, (index) => 'Item $index').obs;

  // Simulate loading more items
  void loadMoreItems() {
    // Simulate API call or loading process
    Future.delayed(Duration(seconds: 2), () {
      // Add more items to the list
      items.addAll(List.generate(5, (index) => 'New Item ${items.length + index}'));

      // Update the UI
      update();
    });
  }
}
