import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({
    super.key,
    required this.headingText,
    required this.subText,
  });
  final String headingText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            debugPrint('Clicked');
          },
          child: Text(
            subText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
