import 'package:tri/core/app_export.dart';
import 'package:tri/presentation/playing_now_screen/models/playing_now_model.dart';

/// A controller class for the PlayingNowScreen.
///
/// This class manages the state of the PlayingNowScreen, including the
/// current playingNowModelObj
class PlayingNowController extends GetxController {
  Rx<PlayingNowModel> playingNowModelObj = PlayingNowModel().obs;
}
