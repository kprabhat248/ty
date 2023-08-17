import '../controller/playing_now_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlayingNowTwoScreen.
///
/// This class ensures that the PlayingNowTwoController is created when the
/// PlayingNowTwoScreen is first loaded.
class PlayingNowTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayingNowTwoController());
  }
}
