import 'controller/playing_now_controller.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';
import 'package:tri/widgets/app_bar/appbar_image.dart';
import 'package:tri/widgets/app_bar/appbar_title.dart';
import 'package:tri/widgets/app_bar/custom_app_bar.dart';

class PlayingNowScreen extends GetWidget<PlayingNowController> {
  const PlayingNowScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_playing_now".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 43),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(341),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFavorite,
                                            height: getSize(18),
                                            width: getSize(18),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(
                                                right: 29, bottom: 23)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: IntrinsicWidth(
                                                          child: SizedBox(
                                                              width: double
                                                                  .maxFinite,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(
                                                                            229),
                                                                        width: getSize(
                                                                            229),
                                                                        margin: getMargin(
                                                                            top:
                                                                                16,
                                                                            bottom:
                                                                                15),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(184), width: getHorizontalSize(144), decoration: BoxDecoration(color: appTheme.indigo600, borderRadius: BorderRadius.circular(getHorizontalSize(9))))),
                                                                              CustomImageView(imagePath: ImageConstant.imgImage6, height: getSize(229), width: getSize(229), radius: BorderRadius.circular(getHorizontalSize(9)), alignment: Alignment.center)
                                                                            ])),
                                                                    Container(
                                                                        height: getSize(
                                                                            261),
                                                                        width: getSize(
                                                                            261),
                                                                        margin: getMargin(
                                                                            left:
                                                                                24),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgMaskgroupGreenA200, height: getVerticalSize(184), width: getHorizontalSize(177), alignment: Alignment.bottomLeft, margin: getMargin(left: 33, bottom: 24)),
                                                                              CustomImageView(imagePath: ImageConstant.imgMaskgroup261x261, height: getSize(261), width: getSize(261), alignment: Alignment.center)
                                                                            ])),
                                                                    Container(
                                                                        height: getSize(
                                                                            230),
                                                                        width: getSize(
                                                                            230),
                                                                        margin: getMargin(
                                                                            left:
                                                                                19,
                                                                            top:
                                                                                16,
                                                                            bottom:
                                                                                14),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(184), width: getHorizontalSize(145), decoration: BoxDecoration(color: appTheme.lime900, borderRadius: BorderRadius.circular(getHorizontalSize(9))))),
                                                                              CustomImageView(imagePath: ImageConstant.imgMaskgroup230x230, height: getSize(230), width: getSize(230), alignment: Alignment.center)
                                                                            ]))
                                                                  ])))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Text(
                                                          "lbl_believer".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .headlineSmallMedium)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4),
                                                      child: Text(
                                                          "lbl_imagine_dragon"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodyLarge))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 30, top: 35),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            margin: getMargin(left: 12))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 30, top: 60, right: 31),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_00_50".tr,
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
                                  width: getHorizontalSize(317),
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
                                                          height:
                                                              getVerticalSize(
                                                                  4),
                                                          width:
                                                              getHorizontalSize(
                                                                  25),
                                                          alignment: Alignment
                                                              .centerLeft)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(18),
                                                width: getHorizontalSize(16),
                                                margin: getMargin(left: 16),
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
                                  margin: getMargin(top: 70))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }
}
