import 'package:flutter/material.dart';
import 'package:talha_s_app/presentation/home_screen/home_screen.dart';
import 'package:talha_s_app/presentation/login/controller/login_controller.dart';
import 'package:talha_s_app/presentation/sign_up/controller/signup_controller.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Container(
                        height: 797.v,
                        width: double.maxFinite,
                        decoration: AppDecoration.fillWhiteA,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLightMode,
                              height: 797.v,
                              width: 390.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildWelcomeToStack(),
                                  SizedBox(height: 54.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 36.h,
                                      right: 35.h,
                                    ),
                                    child: CustomTextFormField(
                                      controller: controller.userName,
                                      hintText: "lbl_username".tr,
                                      prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 10.v, 30.h, 10.v),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 38.v,
                                          width: 34.h,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        maxHeight: 63.v,
                                      ),
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "err_msg_please_enter_valid_text"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      contentPadding: EdgeInsets.only(
                                        top: 20.v,
                                        right: 30.h,
                                        bottom: 20.v,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 22.v),
                                  _buildPasswordStack(),
                                  SizedBox(height: 45.v),
                                  CustomElevatedButton(
                                    leftIcon: Obx(() => controller
                                            .isLoading.value
                                        ? Container(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ))
                                        : Container()),
                                    text: "lbl_login".tr,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 31.h),
                                    onPressed: () {
                                      controller.login();
                                    },
                                  ),
                                  SizedBox(height: 25.v),
                                  _buildDividerRow(),
                                  SizedBox(height: 24.v),
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
                                            imagePath: ImageConstant
                                                .imgFlatColorIconsGoogle,
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
                                  SizedBox(height: 30.v),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_don_t_have_on_account2".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                        WidgetSpan(
                                            child: InkWell(
                                                onTap: () => {
                                                      Get.toNamed(AppRoutes
                                                          .signUpScreen)
                                                    },
                                                child: Text(
                                                  "lbl_sign_up"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: CustomTextStyles
                                                      .bodyMediumTeal20002
                                                      .copyWith(
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                )))
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeToStack() {
    return SizedBox(
      height: 315.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
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
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage12292x390,
            height: 292.v,
            width: 390.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75.v,
              width: 72.h,
              margin: EdgeInsets.only(bottom: 43.v),
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage10,
                height: 57.v,
                width: 69.h,
                alignment: Alignment.topCenter,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordStack() {
    return SizedBox(
      height: 63.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_password".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomTextFormField(
            width: 319.h,
            controller: controller.password,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            fillColor: appTheme.blueGray10002.withOpacity(0.68),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 63.v,
              width: 66.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.88),
                borderRadius: BorderRadius.circular(
                  33.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMdiLock,
            height: 43.adaptSize,
            width: 43.adaptSize,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 11.h),
          )
        ],
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
