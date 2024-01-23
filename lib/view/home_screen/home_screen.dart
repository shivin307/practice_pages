import 'package:dgsea/config/theme_data/app_text_styles.dart';
import 'package:dgsea/controller/home_controller.dart';
import 'package:dgsea/view/home_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends GetView<HomeController> {
  final ScrollController _scrollController = ScrollController();

  HomeScreen({Key? key}) : super(key: key) {
    // Add a listener to the ScrollController to detect when the user scrolls to the bottom
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // Load more items or trigger pagination here
        controller.loadMoreItems();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: AppThemeConst.semiBoldText,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is semiBold text.',
                style: AppThemeConst.semiBoldText,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(SecondScreen());
                },
                child: Text(
                  'Go to Second Screen',
                  style: AppThemeConst.boldText,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                controller: _scrollController, // Assign the ScrollController
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Center(
                                    child: QrImageView(
                                      data: 'sahil italiya $index',
                                      version: QrVersions.auto,
                                      size: 120.0,
                                    ).paddingOnly(top: 10),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'From',
                                        style: AppThemeConst.semiBoldText,
                                      ),
                                      Text(
                                        'from\nwhere',
                                        style: AppThemeConst.semiBoldText
                                            .copyWith(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '04:00 PM',
                                        style: AppThemeConst.boldText
                                            .copyWith(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/images/ic_ship_png.png',
                                          height: 50),
                                      Text(
                                        'VOYAGE\nEXPRESS',
                                        textAlign: TextAlign.center,
                                        style: AppThemeConst.boldText
                                            .copyWith(fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'To',
                                        style: AppThemeConst.semiBoldText,
                                      ),
                                      Text(
                                        'to\nwhere',
                                        style: AppThemeConst.semiBoldText
                                            .copyWith(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        'Confirmed',
                                        style: AppThemeConst.boldText.copyWith(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(height: 2, color: Colors.grey),
                          Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('PRN number: 1234567890'),
                                  Text('data')
                                ],
                              ).paddingSymmetric(horizontal: 10))
                        ],
                      ),
                    ),
                  ).paddingOnly(bottom: 5);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
