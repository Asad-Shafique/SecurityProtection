import 'package:flutter/material.dart';
import 'package:talha_s_app/presentation/profile/profile_screen_controller.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildStackwelcometo(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildUserName(),
                        SizedBox(height: 5.v),
                        _buildNameEditText(),
                        SizedBox(height: 5.v),
                        _buildPhoneNumber(),
                        SizedBox(height: 20.v),
                        _buildStackViewThree(),
                        SizedBox(height: 45.v),
                        _buildStacklogin()
                      ],
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
  Widget _buildEditText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 100.v),
      child: CustomTextFormField(
        width: 319.h,
        controller: controller.usernameController,
        alignment: Alignment.bottomCenter,
        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
        fillColor: appTheme.blueGray10002.withOpacity(0.68),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 13.v),
      child: CustomTextFormField(
        width: 319.h,
        controller: controller.nameController,
        hintText: "lbl_your_name".tr,
        alignment: Alignment.bottomCenter,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 30.v,
            width: 27.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 63.v,
        ),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(bottom: 13.v),
      child: CustomTextFormField(
        width: 319.h,
        controller: controller.usernameController,
        hintText: "lbl_username".tr,
        alignment: Alignment.bottomCenter,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 30.v,
            width: 27.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 63.v,
        ),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStackwelcometo() {
    return SizedBox(
      height: 140.v,
      width: 387.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage13,
            height: 292.v,
            width: 387.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 31.h,
                top: 8.v,
                right: 25.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 75.v,
                    centerTitle: true,
                    title: Container(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder36,
                      ),
                      child: Column(
                        children: [
                          AppbarImage(
                            imagePath: ImageConstant.imgImage10,
                            margin: EdgeInsets.only(right: 1.h),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Profile".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ),
          // _buildUserName(),
          // SizedBox(
          //   height: 20,
          // ),

          // _buildEditText(),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Container(
          //     height: 63.v,
          //     width: 66.h,
          //     margin: EdgeInsets.only(
          //       left: 33.h,
          //       bottom: 100.v,
          //     ),
          //     decoration: BoxDecoration(
          //       color: theme.colorScheme.primary.withOpacity(0.88),
          //       borderRadius: BorderRadius.circular(
          //         33.h,
          //       ),
          //     ),
          //   ),
          // ),
          // CustomImageView(
          //   imagePath: ImageConstant.imgVector,
          //   height: 35.v,
          //   width: 31.h,
          //   alignment: Alignment.bottomLeft,
          //   margin: EdgeInsets.only(
          //     left: 51.h,
          //     bottom: 117.v,
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(bottom: 120.v),
          //     child: Text(
          //       "lbl_username".tr,
          //       style: theme.textTheme.bodyLarge,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return SizedBox(
      height: 63.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 63.v,
              width: 319.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10002.withOpacity(0.66),
                borderRadius: BorderRadius.circular(
                  31.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
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
            imagePath: ImageConstant.imgFaMobile,
            height: 35.v,
            width: 21.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 19.h),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     "lbl_phone_number".tr,
          //     style: theme.textTheme.bodyLarge,
          //   ),
          // ),
          Align(
              alignment: Alignment.center,
              child: CustomTextFormField(
                width: 200.h,
                hintText: 'Phone number',
                controller: controller.phoneNumberController,
                fillColor: Colors.transparent,
                // textStyle: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return SizedBox(
      height: 63.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 63.v,
              width: 319.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10002.withOpacity(0.66),
                borderRadius: BorderRadius.circular(
                  31.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
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
            imagePath: ImageConstant.imgVectorGray10001,
            height: 35.v,
            width: 21.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 19.h),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     "lbl_phone_number".tr,
          //     style: theme.textTheme.bodyLarge,
          //   ),
          // ),
          Align(
              alignment: Alignment.center,
              child: CustomTextFormField(
                width: 200.h,
                hintText: 'Password',

                controller: controller.passwordController,
                fillColor: Colors.transparent,
                // textStyle: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextOne() {
    return CustomTextFormField(
      width: 319.h,
      hintText: "Email",
      //textStyle: TextStyle(color: Colors.black),
      controller: controller.emailController,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildStackViewThree() {
    return SizedBox(
      height: 63.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          _buildEditTextOne(),
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
            imagePath: ImageConstant.imgVectorWhiteA700,
            height: 23.v,
            width: 37.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 15.h),
          ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 15.v),
          //     child: Text(
          //       "lbl_email".tr,
          //       style: theme.textTheme.bodyLarge,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextTwo() {
    return CustomTextFormField(
      width: 319.h,
      // controller: controller.editTextTwoController,
      textInputAction: TextInputAction.done,
      alignment: Alignment.center,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildStackViewFour() {
    return SizedBox(
      height: 63.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildEditTextTwo(),
          Align(
            alignment: Alignment.centerLeft,
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
            imagePath: ImageConstant.imgVectorGray10001,
            height: 37.v,
            width: 26.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 18.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_password".tr,
              style: theme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildLoginButton() {
  //   return CustomElevatedButton(
  //     text: "lbl_sing_up".tr,
  //     leftIcon: Obx(() => controller.isLoading.value
  //         ? CircularProgressIndicator()
  //         : Container()),
  //     onPressed: () {
  //       controller.signUp();
  //     },
  //   );
  // }

  /// Section Widget
  Widget _buildStacklogin() {
    return SizedBox(
      height: 236.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 236.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // _buildLoginButton(),
                  CustomElevatedButton(
                    leftIcon: Obx(() => controller.isLoading.value
                        ? Container(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ))
                        : Icon(
                            Icons.logout,
                            color: Colors.white,
                          )),
                    text: "Logout".tr,
                    margin: EdgeInsets.symmetric(horizontal: 31.h),
                    onPressed: () {
                      controller.logout();
                    },
                  ),
                  SizedBox(height: 25.v),
                  SizedBox(height: 23.v),
                ],
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
