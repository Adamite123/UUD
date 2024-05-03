import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/app_export.dart';

Widget buildBottomBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 1.h),
    child: SizedBox(
      height: 65.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 65.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA70002, // Use your app theme colors
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.15), // Use your app theme colors
                    spreadRadius: 1.h,
                    blurRadius: 15.h,
                    offset: Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup88,
            height: 29.v,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 16.v),
          ),
        ],
      ),
    ),
  );
}
