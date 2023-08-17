import 'package:tri/core/app_export.dart';
import 'package:tri/presentation/playing_now_two_screen/models/playing_now_two_model.dart';

/// A controller class for the PlayingNowTwoScreen.
///
/// This class manages the state of the PlayingNowTwoScreen, including the
/// current playingNowTwoModelObj
class PlayingNowTwoController extends GetxController {
  Rx<PlayingNowTwoModel> playingNowTwoModelObj = PlayingNowTwoModel().obs;
}
