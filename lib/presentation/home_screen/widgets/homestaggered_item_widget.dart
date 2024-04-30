import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/homestaggered_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomestaggeredItemWidget extends StatelessWidget {
  HomestaggeredItemWidget(this.homestaggeredItemModelObj, {Key? key})
      : super(
          key: key,
        );

  HomestaggeredItemModel homestaggeredItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: homestaggeredItemModelObj.imageOne!.value,
          height: 130.v,
          width: 109.h,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
      ),
    );
  }
}
