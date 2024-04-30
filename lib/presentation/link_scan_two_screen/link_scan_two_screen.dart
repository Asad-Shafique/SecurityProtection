import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/link_scan_two_controller.dart'; // ignore_for_file: must_be_immutable

class LinkScanTwoScreen extends StatelessWidget {
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
                  padding: EdgeInsets.symmetric(horizontal: 97.h),
                  child: Column(
                    children: [
                      Text(
                        "lbl_link_security".tr,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        height: 154.adaptSize,
                        width: 154.adaptSize,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 135.adaptSize,
                                width: 135.adaptSize,
                                child: Obx(() => CircularProgressIndicator(
                                      value: (linkScanTwoController
                                                  .riskScore.value /
                                              100)
                                          .toDouble(),
                                      strokeWidth: 10,
                                      backgroundColor: appTheme.gray200,
                                      color: appTheme.amber400,
                                    )),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      linkScanTwoController.riskScore.value
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 40),
                                    ),
                                    Text(
                                      "lbl_out_of_100".tr,
                                      style: CustomTextStyles
                                          .titleMediumKarlaLightblue100,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_calculated_from".tr,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 65.v),
                SizedBox(
                  height: 475.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      _buildStackSourceLink(),
                      CustomImageView(
                        imagePath: ImageConstant.imgFraudDetection,
                        height: 160.v,
                        width: 114.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 49.h,
                          top: 15.v,
                        ),
                      ),
                      _buildRowDetails(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 39.h,
                            top: 43.v,
                            right: 211.h,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 19.h),
                          decoration: AppDecoration.fillTeal30070.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 95.v),
                              SizedBox(
                                width: 101.h,
                                child: Text(
                                  "msg_preventive_measures".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () => {Get.toNamed(AppRoutes.linkReport)},
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.only(
                                top: 43.v,
                                right: 39.h,
                              ),
                              color: appTheme.teal30070,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: 151.v,
                                width: 140.h,
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                decoration:
                                    AppDecoration.fillTeal30070.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 91.h,
                                        margin: EdgeInsets.only(right: 18.h),
                                        child: Text(
                                          "lbl_report_summary".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgFraudDetection109x135,
                                      height: 109.v,
                                      width: 135.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 2.v),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 49.h,
      leading: InkWell(
          onTap: () => {Get.back()},
          child: AppbarLeadingImage(
            imagePath: ImageConstant.imgMaterialSymbolTealA200,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 8.v,
            ),
          )),
      actions: [
        // AppbarTrailingIconbutton(
        //   imagePath: ImageConstant.imgSend,
        //   margin: EdgeInsets.only(
        //     left: 18.h,
        //     right: 2.h,
        //   ),
        // ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgDownload,
          margin: EdgeInsets.only(
            left: 7.h,
            right: 20.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackSourceLink() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 282.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage21,
              height: 282.v,
              width: 390.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 11.h,
                  top: 28.v,
                  right: 11.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildColumnDateTheLinkWas(
                              dateCreated: "lbl_source_links".tr,
                              zipcode: "lbl_e_mail".tr,
                            ),
                          ),
                        ),
                        Obx(() => Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildColumnDateTheLinkWas(
                                  dateCreated: "msg_date_the_link_was".tr,
                                  zipcode:
                                      linkScanTwoController.dateCreated.value!,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 83.v),
                    CustomElevatedButton(
                      height: 75.v,
                      text: "lbl_finish".tr,
                      margin: EdgeInsets.symmetric(horizontal: 42.h),
                      buttonStyle: CustomButtonStyles.fillTealTL20,
                      buttonTextStyle: theme.textTheme.headlineMedium!,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDetails() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 34.h,
          right: 34.h,
          bottom: 459.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text(
            //   "lbl_details".tr,
            //   style: CustomTextStyles.labelLarge13,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   "lbl_show_all".tr,
                //   style: theme.textTheme.labelLarge,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 4.h),
                //   child: Text(
                //     "lbl_6".tr,
                //     style: theme.textTheme.labelLarge,
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumnDateTheLinkWas({
    required String dateCreated,
    required String zipcode,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillTeal30070.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              dateCreated,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              zipcode,
              style: CustomTextStyles.labelLargeJosefinSansPrimary.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
