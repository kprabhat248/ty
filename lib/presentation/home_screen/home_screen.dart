import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    padding: getPadding(top: 35),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 28, right: 42),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 4, bottom: 2),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(2),
                                                  width: getHorizontalSize(24),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blue5001)),
                                              Container(
                                                  height: getVerticalSize(2),
                                                  width: getHorizontalSize(24),
                                                  margin: getMargin(top: 6),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.blue5001))
                                            ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: getSize(18),
                                        width: getSize(18))
                                  ])),
                          Padding(
                              padding: getPadding(left: 28, top: 36),
                              child: Text("msg_recommended_for".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.headlineSmall)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  height: getVerticalSize(259),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(left: 28, top: 17),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            width: getHorizontalSize(20));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.value.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList
                                            .value[index];
                                        return HomeItemWidget(model);
                                      })))),
                          Padding(
                              padding: getPadding(left: 28, top: 43),
                              child: Text("lbl_my_playlist".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.headlineSmall)),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(top: 17),
                              child: IntrinsicWidth(
                                  child: SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(425),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      bottom:
                                                                          109),
                                                              child: Text(
                                                                  "lbl_popular_artists"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 28),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                        height: getSize(
                                                                            190),
                                                                        width: getSize(
                                                                            190),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgMaskgroupGreenA200, height: getVerticalSize(161), width: getHorizontalSize(154), alignment: Alignment.bottomLeft, margin: getMargin(left: 14, bottom: 6)),
                                                                              CustomImageView(imagePath: ImageConstant.imgMaskgroup261x261, height: getSize(190), width: getSize(190), alignment: Alignment.center)
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                15),
                                                                        child: Text(
                                                                            "lbl_believer"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.titleMedium)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "lbl_imagine_dragon"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: theme.textTheme.bodySmall))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(92),
                                                              width:
                                                                  getSize(92),
                                                              margin: getMargin(
                                                                  left: 28),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle67,
                                                                        height: getSize(
                                                                            92),
                                                                        width: getSize(
                                                                            92),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            8)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(bottom: 6),
                                                                            child: Text("lbl_drake".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.labelLarge)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(92),
                                                              width:
                                                                  getSize(92),
                                                              margin: getMargin(
                                                                  left: 134),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle68,
                                                                        height: getSize(
                                                                            92),
                                                                        width: getSize(
                                                                            92),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            8)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(bottom: 6),
                                                                            child: Text("lbl_taylor_swift".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.labelLarge)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(92),
                                                              width:
                                                                  getSize(92),
                                                              margin: getMargin(
                                                                  right: 42),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle69,
                                                                        height: getSize(
                                                                            92),
                                                                        width: getSize(
                                                                            92),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            8)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(bottom: 6),
                                                                            child: Text("lbl_cardi_b".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.labelLarge)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      75),
                                                              width: double
                                                                  .maxFinite,
                                                              margin: getMargin(
                                                                  bottom: 126),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                        child: Container(
                                                                            width: double.maxFinite,
                                                                            margin: getMargin(top: 8),
                                                                            decoration: AppDecoration.fill,
                                                                            child: Row(children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgMaskgroup261x261, height: getSize(66), width: getSize(66)),
                                                                              Padding(
                                                                                  padding: getPadding(left: 11, top: 11, bottom: 13),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_chaff_dust".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMedium18_1),
                                                                                    Padding(padding: getPadding(top: 5), child: Text("lbl_hyonna".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))
                                                                                  ])),
                                                                              Spacer(),
                                                                              CustomImageView(svgPath: ImageConstant.imgRewind, height: getSize(20), width: getSize(20), margin: getMargin(top: 22, bottom: 22)),
                                                                              CustomImageView(svgPath: ImageConstant.imgTrash, height: getSize(23), width: getSize(23), margin: getMargin(left: 16, top: 21, bottom: 21)),
                                                                              CustomImageView(svgPath: ImageConstant.imgSend, height: getSize(20), width: getSize(20), margin: getMargin(left: 16, top: 22, right: 28, bottom: 22))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 8),
                                                                            child: Container(height: getVerticalSize(4), width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700.withOpacity(0.31)), child: ClipRRect(child: LinearProgressIndicator(value: 0.53, backgroundColor: appTheme.whiteA700.withOpacity(0.31), valueColor: AlwaysStoppedAnimation<Color>(appTheme.whiteA700)))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Container(
                                                                            height:
                                                                                getSize(16),
                                                                            width: getSize(16),
                                                                            margin: getMargin(right: 168),
                                                                            decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(8)))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      42),
                                                              width: double
                                                                  .maxFinite,
                                                              margin: getMargin(
                                                                  bottom: 84),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: appTheme
                                                                          .gray900))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        getSize(
                                                                            190),
                                                                    width:
                                                                        getSize(
                                                                            190),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Container(height: getVerticalSize(152), width: getHorizontalSize(119), decoration: BoxDecoration(color: appTheme.lime900, borderRadius: BorderRadius.circular(getHorizontalSize(8))))),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgMaskgroup230x230,
                                                                              height: getSize(190),
                                                                              width: getSize(190),
                                                                              alignment: Alignment.center)
                                                                        ])),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                15),
                                                                    child: Text(
                                                                        "lbl_shortwave"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleMedium)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "lbl_ryan_grigdry"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall))
                                                              ]))
                                                    ])),
                                            Spacer(),
                                            Padding(
                                                padding:
                                                    getPadding(bottom: 183),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: getSize(190),
                                                          width: getSize(190),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMaskgroupPink900,
                                                                    height:
                                                                        getVerticalSize(
                                                                            168),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            151),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgMaskgroup261x261,
                                                                    height:
                                                                        getSize(
                                                                            190),
                                                                    width:
                                                                        getSize(
                                                                            190),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15),
                                                          child: Text(
                                                              "lbl_dream_on".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleMedium)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "lbl_roger_terry"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20, bottom: 183),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: getSize(190),
                                                          width: getSize(190),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMaskgroupLightGreen900,
                                                                    height:
                                                                        getVerticalSize(
                                                                            161),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            125),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgMaskgroup261x261,
                                                                    height:
                                                                        getSize(
                                                                            190),
                                                                    width:
                                                                        getSize(
                                                                            190),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15),
                                                          child: Text(
                                                              "lbl_origins".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleMedium)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "lbl_imagine_dragon"
                                                                  .tr,
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
                                          ])))),
                          Padding(
                              padding: getPadding(left: 28, top: 24),
                              child: Row(children: [
                                SizedBox(
                                    height: getSize(92),
                                    width: getSize(92),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle70,
                                              height: getSize(92),
                                              width: getSize(92),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 6),
                                                  child: Text("lbl_eminem".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme.textTheme
                                                          .labelLarge)))
                                        ])),
                                Container(
                                    height: getSize(92),
                                    width: getSize(92),
                                    margin: getMargin(left: 14),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle71,
                                              height: getSize(92),
                                              width: getSize(92),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 6),
                                                  child: Text(
                                                      "lbl_morgan_wallen".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme.textTheme
                                                          .labelLarge)))
                                        ])),
                                Container(
                                    height: getSize(92),
                                    width: getSize(92),
                                    margin: getMargin(left: 14),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle72,
                                              height: getSize(92),
                                              width: getSize(92),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 6),
                                                  child: Text("lbl_dababy".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme.textTheme
                                                          .labelLarge)))
                                        ]))
                              ]))
                        ])))));
  }
}
