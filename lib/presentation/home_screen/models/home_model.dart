import '../../../core/app_export.dart';
import 'homestaggered_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeModel {
  Rx<List<HomestaggeredItemModel>> homestaggeredItemList = Rx([
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage111x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage158x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage163x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage148x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage109x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage132x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage107x109.obs),
    HomestaggeredItemModel(imageOne: ImageConstant.imgImage127x109.obs)
  ]);
}
