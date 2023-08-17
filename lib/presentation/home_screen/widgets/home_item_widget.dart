import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        190,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(
                189,
              ),
              width: getHorizontalSize(
                190,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCovers,
                    height: getVerticalSize(
                      161,
                    ),
                    width: getHorizontalSize(
                      154,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCovers190x190,
                    height: getSize(
                      190,
                    ),
                    width: getSize(
                      190,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 17,
              ),
              child: Obx(
                () => Text(
                  homeItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Obx(
                () => Text(
                  homeItemModelObj.authorTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
