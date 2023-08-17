import 'controller/playing_now_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';
import 'package:tri/widgets/app_bar/appbar_image.dart';
import 'package:tri/widgets/app_bar/appbar_title.dart';
import 'package:tri/widgets/app_bar/custom_app_bar.dart';

class PlayingNowTwoScreen extends GetWidget<PlayingNowTwoController> {
  const PlayingNowTwoScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_playing_now".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 25),
                    child: Padding(
                        padding: getPadding(left: 27, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(341),
                                      width: getHorizontalSize(322),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFavorite,
                                                height: getSize(18),
                                                width: getSize(18),
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: getMargin(
                                                    right: 29, bottom: 23)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(children: [
                                                        SizedBox(
                                                            height:
                                                                getSize(261),
                                                            width: getSize(261),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              209),
                                                                          width: getHorizontalSize(
                                                                              164),
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.indigo600,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage6261x261,
                                                                      height:
                                                                          getSize(
                                                                              261),
                                                                      width: getSize(
                                                                          261),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    230),
                                                            width:
                                                                getHorizontalSize(
                                                                    40),
                                                            margin: getMargin(
                                                                left: 21,
                                                                top: 16,
                                                                bottom: 14),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMaskgroupGreenA200163x10,
                                                                      height:
                                                                          getVerticalSize(
                                                                              163),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              10),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              21)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMaskgroup230x40,
                                                                      height:
                                                                          getVerticalSize(
                                                                              230),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              40),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))
                                                      ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 50,
                                                              top: 29),
                                                          child: Text(
                                                              "lbl_moment_apart"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .headlineSmallMedium)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Text(
                                                              "lbl_odesza2"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 2, top: 53),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVolume,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgIcroundrepeat,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgEvashuffleoutline,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(left: 15))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 2, top: 61, right: 31),
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
                                                              .imgVector163WhiteA700,
                                                          height:
                                                              getVerticalSize(
                                                                  4),
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
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
                                  margin: getMargin(left: 74, top: 70))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft3() {
    Get.back();
  }
}
