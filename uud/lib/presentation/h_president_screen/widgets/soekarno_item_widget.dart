import 'package:flutter/material.dart';
import 'package:uud/core/app_export.dart';

// ignore: must_be_immutable
class SoekarnoItemWidget extends StatelessWidget {
  final String imagePath;
  final String presiden;
  final String date;

  const SoekarnoItemWidget({
    Key? key,
    required this.imagePath,
    required this.presiden,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 99.v,
      width: 81.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillGrayB.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 21.v),
                  Text(
                    presiden,
                    style: CustomTextStyles.labelMediumGray800,
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      date,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: imagePath, // Use the dynamic image path here
            height: 46.adaptSize,
            width: 46.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
