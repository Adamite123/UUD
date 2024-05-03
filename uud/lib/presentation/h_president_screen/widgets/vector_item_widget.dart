import 'package:uud/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:uud/core/app_export.dart';

class VectorItemWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String desc;
  
  const VectorItemWidget({
    Key? key,
    required this.iconData,
    required this.text,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 43.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              child: Icon(
                iconData,
                size: 24, // Adjust the size of the icon as needed
                color: Color.fromARGB(255, 255, 252, 252), // Adjust the color of the icon as needed
              ),
            ),
            SizedBox(height: 5.v),
            Container(
              child: Text(
                text,
                style: desc == 'small'
                    ? theme.textTheme.bodySmall?.copyWith(fontSize: 7)
                    : theme.textTheme.bodySmall?.copyWith(fontSize: 7.5),
                textAlign: TextAlign.center, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
