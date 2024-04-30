import 'package:flutter/material.dart';
import 'package:talha_s_app/core/network/api_service.dart';
import 'package:talha_s_app/presentation/link_scan_two_screen/controller/link_scan_two_controller.dart';

import '../../../core/app_export.dart';
import '../models/link_scan_model.dart';

/// A controller class for the LinkScanScreen.
///
/// This class manages the state of the LinkScanScreen, including the
/// current linkScanModelObj
class LinkScanController extends GetxController {
  Rx<LinkScanModel> linkScanModelObj = LinkScanModel().obs;
  Rx<bool> isLoading = Rx<bool>(true);
  ApiService _apiService = ApiService();
  late String url;
  @override
  void onInit() {
    super.onInit();

    final Map<String, dynamic>? args = Get.arguments;

    // Accessing parameter values
    url = args?['url'];
    isLoading.value = true;
    print('url $url');
    checkUrl(removeHttpFromUrl(url));
    isLoading.value = false;
  }

  checkUrl(url) async {
    try {
      final result =
          await _apiService.get(ApiService.MALICIOUS_URL_DETECTION + '$url');
      print('response ${result.toString()}');
      print('response ${result.data['risk_score']}');
      isLoading.value = true;
      if (result.data['success'] == true) {
        LinkScanTwoController.result = result.data;
        Get.offNamed(AppRoutes.linkScanSecondScreen,
            arguments: {'response': result.data});
      } else {
        showSnackbar('Error', "Incorrect URL or not results found.");
      }
    } catch (error) {
      isLoading.value = true;
    }
  }

  

  String removeHttpFromUrl(String url) {
    return url.replaceAll(RegExp(r'https?://'), '');
  }

  void showSnackbar(title, message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM, // Adjust position as needed
      duration: Duration(seconds: 3), // Adjust the duration as needed
      backgroundColor: appTheme.blueGray400, // Customize background color
      colorText: Colors.black, // Customize text color
      borderRadius: 10, // Customize border radius
    );
  }
}
