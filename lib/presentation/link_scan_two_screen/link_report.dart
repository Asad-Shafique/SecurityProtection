import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/link_scan_two_controller.dart'; // ignore_for_file: must_be_immutable

class LinkReport extends StatelessWidget {
  final linkScanTwoController = Get.find<LinkScanTwoController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 38.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLinkScanTwo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'URL Analysis Report',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      SizedBox(height: 6.v),
                      Material(
                        color: Colors.white,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width - 10,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'URL Scanning Details for ${linkScanTwoController.url}',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Safe',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Domain Rank',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'DNS Valid',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Malware',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Spamming',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Phishing',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Suspicious',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Risk Score',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Domain Trust',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ]),
                                    Column(children: [
                                      Text(
                                        linkScanTwoController.safe.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.domainRank.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.dnsValid.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.malware.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.spamming.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.phishing.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.suspicious.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController.riskScore.value
                                            .toString()!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        linkScanTwoController
                                            .domainTrust.value!,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      )
                                    ])
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 65.v),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle the download action here
            print('Download URL analysis report');
          },
          child: Icon(Icons.download),
          backgroundColor: Colors.teal, // Set your desired background color
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 49.h,
      leading: InkWell(
        onTap: () {
          print('back');
          Get.back(result: true);
        },
        child: AppbarLeadingImage(
          imagePath: ImageConstant.imgMaterialSymbolTealA200,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 8.v,
          ),
        ),
      ),
      actions: [],
    );
  }
}
