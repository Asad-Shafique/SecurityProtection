import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../home_screen/home_screen.dart';
import 'controller/setting_controller.dart'; // ignore_for_file: must_be_immutable

class SettingScreen extends GetWidget<SettingController> {
  const SettingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 88.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup95,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAppBar(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      SizedBox(height: 9.v),
                      _buildSupportAbout(),
                      SizedBox(height: 9.v),
                      _buildCacheCellular(),
                      SizedBox(height: 9.v),
                      _buildActions()
                    ],
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButton: CustomFloatingButton(
          height: 49,
          width: 43,
          child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.5.v,
            width: 21.5.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "lbl_account".tr.toUpperCase(),
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 3.v),
            Container(
              width: 342.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillTeal.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconamoonProfileLight,
                        height: 28.v,
                        width: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "lbl_edit_profile".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbolTeal20001,
                        height: 28.v,
                        width: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.h,
                          top: 6.v,
                        ),
                        child: Text(
                          "lbl_security".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconamoonNotification,
                        height: 28.v,
                        width: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_notifications".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcOutlineLock,
                        height: 28.v,
                        width: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.h,
                          top: 6.v,
                        ),
                        child: Text(
                          "lbl_privacy".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return SizedBox(
      height: 257.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage16,
            height: 241.v,
            width: 390.h,
            alignment: Alignment.topCenter,
          ),
          CustomAppBar(
            leadingWidth: 53.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMaterialSymbolTealA200,
              margin: EdgeInsets.only(
                left: 23.h,
                top: 14.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_settings".tr,
            ),
          ),
          _buildUserProfile()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupportAbout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "lbl_support_about".tr.toUpperCase(),
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          width: 342.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaterialSymbolTeal20002,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "lbl_my_subscribtion".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMdiQuestionMa,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "lbl_help_support".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTablerCircleLetterI,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_terms_and_policies".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCacheCellular() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "msg_cache_cellular".tr.toUpperCase(),
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          width: 342.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillTeal30070.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRiDeleteBin5Line,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 38.h,
                        top: 6.v,
                      ),
                      child: Text(
                        "lbl_free_up_space".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcOutlineDataExploration,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 38.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_data_saver".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            "lbl_actions".tr.toUpperCase(),
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          width: 342.h,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.fillTeal30070.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcSharpOutlinedFlag,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "msg_report_a_problem".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcSharpPeopleOutline,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_add_account".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMdiLogout,
                    height: 27.v,
                    width: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36.h,
                      top: 6.v,
                    ),
                    child: Text(
                      "lbl_log_out".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Materialsymbol:
        return AppRoutes.homeOneContainerPage;
      case BottomBarEnum.Materialsymbolgray40001:
        return AppRoutes.historyScreen;
      case BottomBarEnum.Materialsymbolgray400:
        return AppRoutes.settingsScreen;
      case BottomBarEnum.Lock:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreen:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }
}
