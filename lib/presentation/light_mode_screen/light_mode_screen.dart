import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/light_mode_controller.dart'; // ignore_for_file: must_be_immutable

class LightModeScreen extends GetWidget<LightModeController> {
  const LightModeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLightMode,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: SizedBox(
              height: 800.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackWithAppBar(),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage8,
                          height: 318.v,
                          width: 390.h,
                        )
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage5,
                    height: 300.v,
                    width: 317.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 208.v),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackWithAppBar() {
    return SizedBox(
      height: 294.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7,
            height: 294.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgGroup68,
                margin: EdgeInsets.only(left: 15.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgGroup67,
                margin: EdgeInsets.only(right: 15.h),
              )
            ],
          )
        ],
      ),
    );
  }
}
