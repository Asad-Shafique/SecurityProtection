import '../../../core/app_export.dart';

/// This class is used in the [homestaggered_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomestaggeredItemModel {
  HomestaggeredItemModel({this.imageOne, this.id}) {
    imageOne = imageOne ?? Rx(ImageConstant.imgImage);
    id = id ?? Rx("");
  }

  Rx<String>? imageOne;

  Rx<String>? id;
}
