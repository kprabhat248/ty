import '../controller/playing_now_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlayingNowOneScreen.
///
/// This class ensures that the PlayingNowOneController is created when the
/// PlayingNowOneScreen is first loaded.
class PlayingNowOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayingNowOneController());
  }
}
