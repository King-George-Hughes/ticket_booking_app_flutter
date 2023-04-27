import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Styles.iconsColor,
          ),
          SizedBox(
            width: AppLayout.getWidth(10.0),
          ),
          Text(
            label,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
