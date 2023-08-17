import '../controller/playing_now_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlayingNowScreen.
///
/// This class ensures that the PlayingNowController is created when the
/// PlayingNowScreen is first loaded.
class PlayingNowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayingNowController());
  }
}
