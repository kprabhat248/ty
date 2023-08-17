import 'package:get/get.dart';
import 'playlist_item_model.dart';

/// This class defines the variables used in the [playlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistModel {
  Rx<List<PlaylistItemModel>> playlistItemList =
      Rx(List.generate(4, (index) => PlaylistItemModel()));
}
