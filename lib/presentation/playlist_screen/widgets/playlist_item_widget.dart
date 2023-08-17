import '../controller/playlist_controller.dart';
import '../models/playlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tri/core/app_export.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(
    this.playlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistItemModel playlistItemModelObj;

  var controller = Get.find<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(
              145,
            ),
            width: getHorizontalSize(
              151,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMaskgroupGreenA200,
                  height: getSize(
                    123,
                  ),
                  width: getSize(
                    123,
                  ),
                  alignment: Alignment.bottomLeft,
                  margin: getMargin(
                    left: 11,
                    bottom: 4,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup261x261,
                  height: getVerticalSize(
                    145,
                  ),
                  width: getHorizontalSize(
                    151,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 47,
              top: 10,
            ),
            child: Obx(
              () => Text(
                playlistItemModelObj.songnameTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 30,
              top: 5,
            ),
            child: Obx(
              () => Text(
                playlistItemModelObj.artistnameTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
