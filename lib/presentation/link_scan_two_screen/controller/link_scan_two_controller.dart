import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/app_export.dart';
import '../models/link_scan_two_model.dart';

/// A controller class for the LinkScanTwoScreen.
///
/// This class manages the state of the LinkScanTwoScreen, including the
/// current linkScanTwoModelObj
class LinkScanTwoController extends GetxController {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  PrefUtils prefUtils = PrefUtils();
  Rx<int> riskScore = Rx<int>(0);
  static dynamic result = "";
  late dynamic data;
  late String url = "";
  Rx<String?> dateCreated = Rx<String>("");

  Rx<String?> safe = Rx<String>("");
  Rx<String?> domainRank = Rx<String>("");
  Rx<String?> dnsValid = Rx<String>("");
  Rx<String?> spamming = Rx<String>("");
  Rx<String?> suspicious = Rx<String>("");
  Rx<String?> riskscore = Rx<String>("");
  Rx<String?> domainTrust = Rx<String>("");
  Rx<String?> malware = Rx<String>("");
  Rx<String?> phishing = Rx<String>("");
  Rx<String?> parking = Rx<String>("");
  Rx<String?> category = Rx<String>("");

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    print('link send');
    final dynamic? args = Get.arguments;

    print('args ${args['response']['risk_score']}');
    riskScore.value = args['response']['risk_score'];
    dateCreated.value = args['response']['domain_age']['iso'] ?? "N/A";
    url = args['response']['scanned_url'] ?? "N/A";

    malware.value = args['response']['malware'].toString();
    phishing.value = args['response']['phishing'].toString();
    suspicious.value = args['response']['suspicious'].toString();
    parking.value = args['response']['parking'].toString();
    spamming.value = args['response']['spamming'].toString();
    category.value = args['response']['category'].toString();
    safe.value =
        args['response']['unsafe'].toString() == "true" ? "false" : "true";
    domainRank.value = args['response']['domain_rank'].toString();
    domainTrust.value = args['response']['domain_trust'].toString();
    dnsValid.value = args['response']['dns_valid'].toString();

    riskScore.value = args['response']['risk_score'];

    storeLinkHistory();
  }

  storeLinkHistory() async {
    String? email = await prefUtils.retrieveData('email');
    await _firestore
        .collection('history_link')
        .doc()
        .set({'email': email, 'link': url, 'createdAt': DateTime.now()});
  }
}
