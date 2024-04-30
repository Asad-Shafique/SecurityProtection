import 'package:flutter/material.dart';
import 'package:talha_s_app/widgets/custom_floating_button.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Materialsymbol,
  Materialsymbolgray40001,
  Materialsymbolgray400,
  Lock
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgMaterialSymbol,
        activeIcon: ImageConstant.imgMaterialSymbol,
        type: BottomBarEnum.Materialsymbol,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.historyIcon,
      activeIcon: ImageConstant.historyIcon,
      type: BottomBarEnum.Materialsymbolgray40001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialSymbolGray400,
      activeIcon: ImageConstant.imgMaterialSymbolGray400,
      type: BottomBarEnum.Materialsymbolgray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ClipRRect(
        borderRadius: BorderRadius.circular(
          29.h,
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: SizedBox(
            height: 90.v,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                bottomMenuList.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      for (var element in bottomMenuList) {
                        element.isSelected = false;
                      }
                      bottomMenuList[index].isSelected = true;
                      onChanged?.call(bottomMenuList[index].type);
                      bottomMenuList.refresh();
                    },
                    child: bottomMenuList[index].isSelected
                        ? CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 37.v,
                            width: 39.h,
                            color: appTheme.teal20002,
                            radius: BorderRadius.circular(
                              15.h,
                            ))
                        : CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 36.v,
                            width: 37.h,
                            color: appTheme.blueGray10002,
                            radius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      required this.type,
      this.isSelected = false});

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
