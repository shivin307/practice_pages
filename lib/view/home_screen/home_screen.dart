import 'dart:math';

import 'package:dgsea/config/theme_data/app_text_styles.dart';
import 'package:dgsea/controller/home_controller.dart';
import 'package:dgsea/view/home_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends GetView<HomeController> {
  final ScrollController _scrollController = ScrollController();

  HomeScreen({Key? key}) : super(key: key) {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        controller.loadMoreItems();
      }
    });
  }

  Future<void> _refresh() async {
    // Perform your refresh logic here
    await Future.delayed(Duration(seconds: 2)); // Simulating a refresh delay
    controller.refreshItems();
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
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(), // Allow overscroll
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
                  controller: _scrollController,
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 175,
                      child: Card(
                        color: Colors.green,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                      child: QrImageView(
                                        data: 'sahil italiya $Random',
                                        version: QrVersions.auto,
                                        size: 120.0,
                                      ).paddingOnly(top: 10),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        color: Colors.yellow,
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
                                        )),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset('assets/images/ic_ship_png.png',
                                                height: 50),
                                            Text(
                                              'VOYAGE\nEXPRESS',
                                              textAlign: TextAlign.center,
                                              style: AppThemeConst.boldText
                                                  .copyWith(fontSize: 14),
                                            )
                                          ],
                                        )),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        color: Colors.brown,
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
                                                  fontSize: 18, color: Colors.green),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(height: 2, color: Colors.grey),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('PRN number: 1234567890'),
                                      Text('data')
                                    ],
                                  ).paddingSymmetric(horizontal: 10),
                                ))
                          ],
                        ),
                      ).paddingOnly(bottom: 5),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
