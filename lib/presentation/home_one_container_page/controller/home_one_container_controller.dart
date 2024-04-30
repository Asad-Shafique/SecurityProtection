import 'package:flutter/widgets.dart';
import 'package:talha_s_app/core/network/api_service.dart';

import '../../../core/app_export.dart';
import '../models/home_one_container_model.dart';

/// A controller class for the HomeOneContainerPage.
///
/// This class manages the state of the HomeOneContainerPage, including the
/// current homeOneContainerModelObj
class HomeOneContainerController extends GetxController {
  HomeOneContainerController();

  // HomeOneContainerController(this.homeOneContainerModelObj);

  Rx<bool> isLoading = Rx<bool>(false);
  Rx<HomeOneContainerModel?>? homeOneContainerModelObj;

  ApiService _apiService = ApiService();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
