import 'controller/options_controller.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OptionsDraweritem extends StatelessWidget {
  OptionsDraweritem(this.controller, {Key? key}) : super(key: key);

  OptionsController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                padding: getPadding(left: 25, top: 36, right: 25, bottom: 36),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 5, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(bottom: 7),
                                    onTap: () {
                                      onTapImgClose();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMoon,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 42),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUser,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(top: 2, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 30),
                                child: Text("lbl_profile".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFavoriteBlueGray300,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 4)),
                            Padding(
                                padding: getPadding(left: 28),
                                child: Text("lbl_liked_songs".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgSearchBlueGray300,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 4)),
                            Padding(
                                padding: getPadding(left: 30),
                                child: Text("lbl_language".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgYoutube,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(top: 1, bottom: 2)),
                            Padding(
                                padding: getPadding(left: 30),
                                child: Text("lbl_contact_us".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(children: [
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgSearchBlueGray30020x20,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(top: 1, bottom: 2)),
                            Padding(
                                padding: getPadding(left: 30),
                                child: Text("lbl_faqs".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ])),
                      Padding(
                          padding: getPadding(top: 33, bottom: 33),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgSettingsBlueGray300,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 3)),
                            Padding(
                                padding: getPadding(left: 30),
                                child: Text("lbl_settings".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                          ]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgClose() {
    Get.back();
  }
}
