// app_routes.dart
import 'package:dgsea/config/const/route_const.dart';
import 'package:dgsea/config/helper/navigation.dart';
import 'package:dgsea/view/home_screen/home_screen.dart';
import 'package:dgsea/view/home_screen/second_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initial = RouteConstants.kInitial; // Initial route

  static final List<GetPage> routes = [
    GetPage(
      name: RouteConstants.kInitial,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteConstants.kSecondScreen,
      page: () => SecondScreen(),
    ),
  ];


}
