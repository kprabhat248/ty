import 'package:tri/core/app_export.dart';
import 'package:tri/presentation/playing_now_one_screen/models/playing_now_one_model.dart';

/// A controller class for the PlayingNowOneScreen.
///
/// This class manages the state of the PlayingNowOneScreen, including the
/// current playingNowOneModelObj
class PlayingNowOneController extends GetxController {
  Rx<PlayingNowOneModel> playingNowOneModelObj = PlayingNowOneModel().obs;
}
