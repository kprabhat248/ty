import 'package:get/get.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  Rx<String> nameTxt = Rx("Monsters Go Bump");

  Rx<String> authorTxt = Rx("ERIKA RECINOS");

  Rx<String>? id = Rx("");
}
