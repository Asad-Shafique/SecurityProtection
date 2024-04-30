import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talha_s_app/widgets/custom_text_form_field.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import 'controller/home_one_container_controller.dart';
import 'models/home_one_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeOneContainerPage extends StatelessWidget {
  TextEditingController inputController = TextEditingController();
  HomeOneContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeOneContainerController controller =
      Get.put(HomeOneContainerController(/*HomeOneContainerModel().obs*/));

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: true,
        extendBody: true,
        // extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: SingleChildScrollView(
          child: Container(
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
            child: Container(
              decoration: AppDecoration.fillWhiteA.copyWith(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgLightMode,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStackSection(),
                  SizedBox(height: 11.v),
                  SizedBox(
                    width: 385.h,
                    child: Text(
                      "msg_hey_there_welcome".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallTeal20002.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 323.h,
                    margin: EdgeInsets.only(
                      left: 31.h,
                      right: 34.h,
                    ),
                    child: Text(
                      "msg_we_are_delighted".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeInikaGray200.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 130.h,
                    text: "msg_discover_my_work".tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                    buttonTextStyle: CustomTextStyles.labelLargeInika,
                  ),
                  SizedBox(height: 39.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 41.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 77.v,
                          width: 189.h,
                          margin: EdgeInsets.only(right: 19.h),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMaximize,
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                alignment: Alignment.bottomRight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 168.h,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_insert_your".tr,
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA700_1
                                              .copyWith(
                                            height: 1.10,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl_link".tr,
                                          style: theme.textTheme.headlineLarge,
                                        ),
                                        TextSpan(
                                          text: "lbl_here".tr,
                                          style: CustomTextStyles
                                              .headlineLargeWhiteA700_1,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          height: 50.v,
                          width: 249.h,
                          decoration: BoxDecoration(
                            color:
                                Colors.white, // Set background color to white
                            borderRadius: BorderRadius.circular(
                                20.0), // Set border radius to make corners rounded
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                  controller: inputController,
                                  fillColor: Colors.white,
                                  textStyle: TextStyle(color: Colors.black),
                                  width: 100,
                                )),
                                InkWell(
                                    onTap: () => {
                                          Get.toNamed(AppRoutes.linkScanScreen,
                                              arguments: {
                                                'url': inputController.text
                                              }),
                                          inputController.text = ""
                                        },
                                    child: SvgPicture.asset(
                                      ImageConstant.linkSend,
                                      width: 20,
                                      height: 20,
                                    )),
                                SizedBox(
                                  width: 2,
                                )
                              ]),
                        ),
                        // CustomTextFormField(
                        //   suffix: SvgPicture.asset(ImageConstant.linkSend),
                        // ),
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgSendLink,
                        //   height: 45.v,
                        //   width: 249.h,
                        //   margin: EdgeInsets.only(right: 5.h),
                        // ),
                        SizedBox(height: 64.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomAppBarSection(),
        floatingActionButton: Visibility(
          visible: !keyboardIsOpened,
          child: CustomFloatingButton(
            onTap: () => {Get.toNamed(AppRoutes.qrScreen)},
            height: 49,
            width: 43,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 24.5.v,
              width: 21.5.h,
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }

  Widget _buildBottomAppBarSection() {
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

  /// Section Widget
  Widget _buildStackSection() {
    return SizedBox(
      height: 223.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage15,
            height: 162.v,
            width: 390.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 184.v,
              width: 199.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgD6ccae2a44b8cc2,
                height: 151.v,
                width: 169.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}
