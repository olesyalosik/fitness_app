import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/img/on_boarding/on1.svg',
              width: MediaQuery.of(context).size.width,
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'Track Your Goal',
                  style: TextStyles.h2_Bold.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              child: Text(
                "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                style: TextStyles.mediumText_Regular.copyWith(
                  color: AppColors.gray1Color,
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: AppColors.blueLinear,
                  ),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
