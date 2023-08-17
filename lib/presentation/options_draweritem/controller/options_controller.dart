import 'package:tri/core/app_export.dart';
import 'package:tri/presentation/options_draweritem/models/options_model.dart';

/// A controller class for the OptionsDraweritem.
///
/// This class manages the state of the OptionsDraweritem, including the
/// current optionsModelObj
class OptionsController extends GetxController {
  Rx<OptionsModel> optionsModelObj = OptionsModel().obs;
}
