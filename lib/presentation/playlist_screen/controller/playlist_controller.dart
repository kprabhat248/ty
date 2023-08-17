import 'package:tri/core/app_export.dart';
import 'package:tri/presentation/playlist_screen/models/playlist_model.dart';

/// A controller class for the PlaylistScreen.
///
/// This class manages the state of the PlaylistScreen, including the
/// current playlistModelObj
class PlaylistController extends GetxController {
  Rx<PlaylistModel> playlistModelObj = PlaylistModel().obs;
}
