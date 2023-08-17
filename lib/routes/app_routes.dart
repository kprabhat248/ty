import 'package:tri/presentation/playing_now_screen/playing_now_screen.dart';
import 'package:tri/presentation/playing_now_screen/binding/playing_now_binding.dart';
import 'package:tri/presentation/playlist_screen/playlist_screen.dart';
import 'package:tri/presentation/playlist_screen/binding/playlist_binding.dart';
import 'package:tri/presentation/playing_now_one_screen/playing_now_one_screen.dart';
import 'package:tri/presentation/playing_now_one_screen/binding/playing_now_one_binding.dart';
import 'package:tri/presentation/home_screen/home_screen.dart';
import 'package:tri/presentation/home_screen/binding/home_binding.dart';
import 'package:tri/presentation/playing_now_two_screen/playing_now_two_screen.dart';
import 'package:tri/presentation/playing_now_two_screen/binding/playing_now_two_binding.dart';
import 'package:tri/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tri/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String playingNowScreen = '/playing_now_screen';

  static const String playlistScreen = '/playlist_screen';

  static const String playingNowOneScreen = '/playing_now_one_screen';

  static const String homeScreen = '/home_screen';

  static const String playingNowTwoScreen = '/playing_now_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: playingNowScreen,
      page: () => PlayingNowScreen(),
      bindings: [
        PlayingNowBinding(),
      ],
    ),
    GetPage(
      name: playlistScreen,
      page: () => PlaylistScreen(),
      bindings: [
        PlaylistBinding(),
      ],
    ),
    GetPage(
      name: playingNowOneScreen,
      page: () => PlayingNowOneScreen(),
      bindings: [
        PlayingNowOneBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: playingNowTwoScreen,
      page: () => PlayingNowTwoScreen(),
      bindings: [
        PlayingNowTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
