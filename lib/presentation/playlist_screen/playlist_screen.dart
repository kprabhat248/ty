import '../playlist_screen/widgets/playlist_item_widget.dart';
import 'controller/playlist_controller.dart';
import 'models/playlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';
import 'package:tri/widgets/app_bar/appbar_image.dart';
import 'package:tri/widgets/app_bar/custom_app_bar.dart';

class PlaylistScreen extends GetWidget<PlaylistController> {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 54,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft1();
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSettings,
                      margin:
                          getMargin(left: 30, top: 16, right: 30, bottom: 15))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 29),
                              child: Text("lbl_liked_songs".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.headlineSmall)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 29, top: 21, right: 27),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(190),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(15),
                                              crossAxisSpacing:
                                                  getHorizontalSize(15)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.playlistModelObj
                                          .value.playlistItemList.value.length,
                                      itemBuilder: (context, index) {
                                        PlaylistItemModel model = controller
                                            .playlistModelObj
                                            .value
                                            .playlistItemList
                                            .value[index];
                                        return PlaylistItemWidget(model);
                                      })))),
                          Container(
                              height: getVerticalSize(403),
                              width: double.maxFinite,
                              margin: getMargin(top: 24),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            144),
                                                        width:
                                                            getHorizontalSize(
                                                                150),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMaskgroupPink900,
                                                                  height:
                                                                      getVerticalSize(
                                                                          128),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          119),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMaskgroup144x150,
                                                                  height:
                                                                      getVerticalSize(
                                                                          144),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          150),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Text(
                                                            "lbl_tie_me_down"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "lbl_gryffin".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Container(
                                                        height: getVerticalSize(
                                                            142),
                                                        width:
                                                            getHorizontalSize(
                                                                147),
                                                        margin:
                                                            getMargin(top: 24),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMaskgroup,
                                                                  height:
                                                                      getVerticalSize(
                                                                          93),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          74),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              8)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMaskgroup261x261,
                                                                  height:
                                                                      getVerticalSize(
                                                                          142),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          147),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "msg_highest_in_the_room"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_travis_scott"
                                                                .tr
                                                                .toUpperCase(),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(left: 15),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    144),
                                                            width:
                                                                getHorizontalSize(
                                                                    150),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMaskgroupDeepPurple700,
                                                                      height:
                                                                          getVerticalSize(
                                                                              123),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              99),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMaskgroup261x261,
                                                                      height:
                                                                          getVerticalSize(
                                                                              144),
                                                                      width: getHorizontalSize(
                                                                          150),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_chaff_dust"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Text(
                                                                "lbl_hyonna".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    143),
                                                            width:
                                                                getHorizontalSize(
                                                                    148),
                                                            margin: getMargin(
                                                                top: 24),
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
                                                                              114),
                                                                          width: getHorizontalSize(
                                                                              93),
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.indigo600,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(6))))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage6143x148,
                                                                      height:
                                                                          getVerticalSize(
                                                                              143),
                                                                      width: getHorizontalSize(
                                                                          148),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              6)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "lbl_moment_apart"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Text(
                                                                "lbl_odesza".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall))
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: getVerticalSize(75),
                                            width: double.maxFinite,
                                            margin: getMargin(top: 126),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          width:
                                                              double.maxFinite,
                                                          margin:
                                                              getMargin(top: 8),
                                                          decoration:
                                                              AppDecoration
                                                                  .fill,
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMaskgroup261x261,
                                                                height:
                                                                    getSize(66),
                                                                width: getSize(
                                                                    66)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 13,
                                                                        bottom:
                                                                            14),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_chaff_dust"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.titleMedium18),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_hyonna".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: theme.textTheme.bodySmall))
                                                                    ])),
                                                            Spacer(),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRewind,
                                                                height:
                                                                    getSize(20),
                                                                width:
                                                                    getSize(20),
                                                                margin:
                                                                    getMargin(
                                                                        top: 22,
                                                                        bottom:
                                                                            22)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgTrash,
                                                                height:
                                                                    getSize(23),
                                                                width:
                                                                    getSize(23),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            16,
                                                                        top: 21,
                                                                        bottom:
                                                                            21)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSend,
                                                                height:
                                                                    getSize(20),
                                                                width:
                                                                    getSize(20),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            16,
                                                                        top: 22,
                                                                        right:
                                                                            27,
                                                                        bottom:
                                                                            22))
                                                          ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  4),
                                                          width:
                                                              double.maxFinite,
                                                          margin: getMargin(
                                                              top: 8))),
                                                  SliderTheme(
                                                      data: SliderThemeData(
                                                          trackShape:
                                                              RoundedRectSliderTrackShape(),
                                                          activeTrackColor:
                                                              appTheme
                                                                  .whiteA700,
                                                          inactiveTrackColor:
                                                              appTheme.whiteA700
                                                                  .withOpacity(
                                                                      0.31),
                                                          thumbColor: appTheme
                                                              .whiteA700,
                                                          thumbShape:
                                                              RoundSliderThumbShape()),
                                                      child: Slider(
                                                          value: 52.85,
                                                          min: 0.0,
                                                          max: 100.0,
                                                          onChanged:
                                                              (value) {}))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(40),
                                            width: double.maxFinite,
                                            margin: getMargin(bottom: 161),
                                            decoration: BoxDecoration(
                                                color: appTheme.gray900)))
                                  ]))
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft1() {
    Get.back();
  }
}
