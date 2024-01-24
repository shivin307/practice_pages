import 'package:dgsea/config/const/string_const.dart';
import 'package:dgsea/config/const/text_const.dart';
import 'package:dgsea/config/const/theme_const.dart';
import 'package:dgsea/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: ThemeConsts.kGreyColor, width: 1),
              borderRadius: BorderRadius.circular(5)),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 120,
                width: Get.width,
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: semiBoldTextStyle(),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ).paddingOnly(bottom: 15),
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ).paddingOnly(bottom: 15),
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ).paddingOnly(bottom: 15),
                            infoTextField(
                              titleText: StringConsts.kPassenger,
                              subText: StringConsts.kPassenger,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider()
                ]),
              );
            },
          ),
        ).paddingSymmetric(horizontal: 10),
      ),
    );
  }

  Widget infoTextField(
      {required String titleText,
      required String subText,
      bool rightAlign = false}) {
    return Column(
      crossAxisAlignment:
          rightAlign ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: mediumTextStyle(
              fontSize: 12, txtColor: ThemeConsts.kSecondaryTextColor),
        ),
        Text(
          subText,
          style: semiBoldTextStyle(txtColor: ThemeConsts.kBlackTextColor),
        ),
      ],
    );
  }
}
