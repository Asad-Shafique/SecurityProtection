import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../../core/app_export.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/home_controller.dart';
import 'models/homestaggered_item_model.dart';
import 'widgets/homestaggered_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
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
                ImageConstant.imgHome,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 476.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage10372x390,
                        height: 372.v,
                        width: 390.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 29.v),
                      ),
                      _buildHomeStaggered(),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 325.v,
                        width: 390.h,
                        alignment: Alignment.topCenter,
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          top: 0,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: 82.adaptSize,
                                    width: 82.adaptSize,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(0.76),
                                      borderRadius: BorderRadius.circular(
                                        36.h,
                                      ),
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage10,
                                      height: 62.v,
                                      width: 62.h,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ]),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_welcome_to".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: "msg_security_protection".tr,
                        style: CustomTextStyles.titleLargeTeal20002,
                      ),
                      TextSpan(
                        text: " ",
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 17.v),
                CustomElevatedButton(
                  onPressed: () => {Get.toNamed(AppRoutes.loginScreen)},
                  text: "lbl_login".tr,
                  margin: EdgeInsets.only(
                    left: 32.h,
                    right: 30.h,
                  ),
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  onPressed: () => {Get.toNamed(AppRoutes.signUpScreen)},
                  text: "lbl_sing_up".tr,
                  margin: EdgeInsets.only(
                    left: 32.h,
                    right: 30.h,
                  ),
                ),
                SizedBox(height: 25.v),
                _buildDividerRow(),
                SizedBox(height: 9.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 46.adaptSize,
                      width: 46.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      onTap: () {
                        onTapBtnFacebookone();
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFacebook,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: CustomIconButton(
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        padding: EdgeInsets.all(3.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlatColorIconsGoogle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomIconButton(
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUser,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 19.v),
                SizedBox(
                  width: 213.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "   ".tr,
                        ),
                        TextSpan(
                          text: "msg_by_clicking_continue2".tr,
                          style: theme.textTheme.bodySmall!.copyWith(
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "msg_terms_of_service".tr,
                          style: CustomTextStyles.bodySmallTealA20001,
                        ),
                        TextSpan(
                          text: "lbl_and".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: CustomTextStyles.bodySmallTealA20001,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeStaggered() {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Obx(
        () => StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 6,
          crossAxisSpacing: 11.h,
          mainAxisSpacing: 11.h,
          staggeredTileBuilder: (index) {
            return StaggeredTile.fit(2);
          },
          itemCount:
              controller.homeModelObj.value.homestaggeredItemList.value.length,
          itemBuilder: (context, index) {
            HomestaggeredItemModel model = controller
                .homeModelObj.value.homestaggeredItemList.value[index];
            return HomestaggeredItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDividerRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 102.h,
              child: Divider(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_or_continue_with".tr,
              style: CustomTextStyles.bodyMediumInterGray200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 110.h,
              child: Divider(
                indent: 8.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  onTapBtnFacebookone() async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
