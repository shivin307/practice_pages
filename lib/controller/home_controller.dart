import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<String> items = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your items or load initial data
    loadItems();
  }

  void loadItems() {
    // Simulating loading items from a data source
    items.addAll(List<String>.generate(10, (index) => 'Item $index'));
  }

  void loadMoreItems() {
    // Simulating loading more items
    items.addAll(List<String>.generate(5, (index) => 'More Item ${items.length + index}'));
  }

  void refreshItems() {
    // Simulating refreshing items
    items.clear();
    loadItems();
  }
}
