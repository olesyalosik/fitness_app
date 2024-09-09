import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  final String name;
  final IconData icon;

  const FieldWidget({
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Container(
        width: 315,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.borderColor,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                icon,
                color: AppColors.gray1Color,
                size: 18.0,
              ),
            ),
            Text(
              name,
              style: TextStyles.smallText_Regular.copyWith(
                color: AppColors.gray2Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
