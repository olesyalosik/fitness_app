import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Spacer(),
              RichText(
                text: TextSpan(
                  text: "Fitnest",
                  style: TextStyles.h1_Bold.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 36,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "X",
                      style: TextStyles.h1_Bold.copyWith(
                        foreground: Paint()
                          ..shader = AppColors.logoLinear.createShader(
                            Rect.fromLTWH(0.0, 0.0, 200.0, 50.0),
                          ),
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Everybody Can Train",
                style: TextStyles.subtitle_Regular.copyWith(
                  color: AppColors.gray1Color,
                ),
              ),
              Spacer(),
              Container(
                width: Dimensions.getStartedButtonWidth,
                height: Dimensions.getStartedButtonHeight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.getStartedButtonRadius,
                    ),
                    gradient: AppColors.logoLinear),
                child: Center(
                  child: Text(
                    "Get started",
                    style: TextStyles.largeText_Bold.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
