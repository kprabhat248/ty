import 'package:get/get.dart';

/// This class is used in the [playlist_item_widget] screen.
class PlaylistItemModel {
  Rx<String> songnameTxt = Rx("Believer");

  Rx<String> artistnameTxt = Rx("IMAGINE DRAGON");

  Rx<String>? id = Rx("");
}
