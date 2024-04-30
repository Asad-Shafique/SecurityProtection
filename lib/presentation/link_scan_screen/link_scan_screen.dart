import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/link_scan_controller.dart'; // ignore_for_file: must_be_immutable

class LinkScanScreen extends StatelessWidget {
  LinkScanScreen({Key? key})
      : super(
          key: key,
        );
  final linkScanController = Get.find<LinkScanController>();

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
          padding: EdgeInsets.only(
            top: 48.v,
            bottom: 59.v,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup70,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Column(
              children: [
                Container(
                  width: 316.h,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 37.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_report_uploading".tr.toUpperCase(),
                          style: theme.textTheme.headlineLarge,
                        ),
                        TextSpan(
                          text: "msg_wait_for_few_seconds".tr,
                          style: CustomTextStyles.headlineSmallGray100,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  height: 467.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage20,
                        height: 467.v,
                        width: 390.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgTimeManagement,
                        height: 218.v,
                        width: 195.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 80.v),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildUploading(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.fromLTRB(25.h, 14.v, 344.h, 14.v),
        onTap: () {
          onTapCloseone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUploading() {
    return CustomElevatedButton(
      onPressed: () =>
          {print('hello'), Get.toNamed(AppRoutes.linkScanSecondScreen)},
      height: 59.v,
      width: 227.h,
      text: "lbl_uploading".tr,
      margin: EdgeInsets.only(
        left: 78.h,
        right: 85.h,
        bottom: 62.v,
      ),
      rightIcon: Obx(() {
        return Container(
          width: 20,
          height: 20,
          margin: EdgeInsets.only(left: 10.h),
          child: linkScanController.isLoading.value == false
              ? CircularProgressIndicator(
                  color: Colors.white,
                )
              : SizedBox(),
        );
      }),
      buttonStyle: CustomButtonStyles.fillTealTL29,
      buttonTextStyle: TextStyle(color: Colors.white),
    );
  }

  /// Navigates to the previous screen.
  onTapCloseone() {
    Get.back();
  }
}
