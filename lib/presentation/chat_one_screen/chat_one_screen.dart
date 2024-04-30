import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/chat_one_controller.dart'; // ignore_for_file: must_be_immutable

class ChatOneScreen extends GetWidget<ChatOneController> {
  const ChatOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 799.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgA6fb0bfe2e66aa7,
                height: 803.v,
                width: 390.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 1.h,
                      bottom: 77.v,
                    ),
                    decoration: AppDecoration.fillPrimary,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 562.v,
                          width: 389.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildStackVectorOne(),
                              CustomImageView(
                                imagePath: ImageConstant.imgChattingWithChatbot,
                                height: 326.v,
                                width: 306.h,
                                alignment: Alignment.bottomCenter,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 108.v),
                        CustomElevatedButton(
                          height: 56.v,
                          text: "lbl_continue".tr.toUpperCase(),
                          margin: EdgeInsets.symmetric(horizontal: 28.h),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 30.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillTealTL28,
                          buttonTextStyle: theme.textTheme.headlineSmall!,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackVectorOne() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 274.v,
        width: 389.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage19,
              height: 274.v,
              width: 389.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 4.v,
                  right: 37.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomAppBar(
                      leadingWidth: 389.h,
                      leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgVector,
                        margin: EdgeInsets.fromLTRB(24.h, 11.v, 344.h, 12.v),
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Container(
                      width: 313.h,
                      margin: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "msg_welcome_we_are".tr.toUpperCase(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeOnPrimary,
                      ),
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
}
