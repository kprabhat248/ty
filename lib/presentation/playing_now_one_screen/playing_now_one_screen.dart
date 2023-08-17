import 'controller/playing_now_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';
import 'package:tri/widgets/app_bar/appbar_image.dart';
import 'package:tri/widgets/app_bar/appbar_title.dart';
import 'package:tri/widgets/app_bar/custom_app_bar.dart';

class PlayingNowOneScreen extends GetWidget<PlayingNowOneController> {
  const PlayingNowOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(75),
                leadingWidth: 54,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_playing_now".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 25),
                    child: Padding(
                        padding: getPadding(right: 28, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaskgroup228x27,
                                                    height:
                                                        getVerticalSize(228),
                                                    width:
                                                        getHorizontalSize(27),
                                                    margin: getMargin(
                                                        top: 16, bottom: 17)),
                                                Container(
                                                    height: getSize(263),
                                                    width: getSize(263),
                                                    margin: getMargin(left: 20),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          211),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          165),
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .lime900,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(11))))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMaskgroup230x230,
                                                              height:
                                                                  getSize(263),
                                                              width:
                                                                  getSize(263),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ]))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  top: 24, right: 67),
                                              child: Text("lbl_shortwave".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .headlineSmallMedium)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, right: 70),
                                              child: Text(
                                                  "lbl_ryan_grigdry"
                                                      .tr
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFavorite,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(
                                            left: 16, top: 299, bottom: 23))
                                  ]),
                              Padding(
                                  padding: getPadding(left: 30, top: 53),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVolume,
                                            height: getSize(20),
                                            width: getSize(20)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIcroundrepeat,
                                            height: getSize(20),
                                            width: getSize(20)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgEvashuffleoutline,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(left: 15))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 30, top: 61, right: 2),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_00_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12),
                                        Text("lbl_04_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles.bodySmall12)
                                      ])),
                              Container(
                                  height: getVerticalSize(18),
                                  width: getHorizontalSize(319),
                                  margin: getMargin(top: 27),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(4),
                                                width: getHorizontalSize(317),
                                                margin: getMargin(bottom: 5),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      317),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          4),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          4),
                                                                  color: appTheme
                                                                      .whiteA700
                                                                      .withOpacity(
                                                                          0.31)))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector163,
                                                          height: getSize(4),
                                                          width: getSize(4),
                                                          alignment: Alignment
                                                              .centerLeft)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(18),
                                                width: getHorizontalSize(16),
                                                decoration: BoxDecoration(
                                                    color: appTheme.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                9)))))
                                      ])),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGroup145,
                                  height: getVerticalSize(40),
                                  width: getHorizontalSize(171),
                                  margin: getMargin(top: 70, right: 73))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft2() {
    Get.back();
  }
}
