import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signup_login/src/widgets/field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Hey there,",
                  style: TextStyles.largeText_Regular.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  "Create an Account",
                  style: TextStyles.h4_Bold.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const FieldWidget(
                  name: "First Name",
                  icon: CupertinoIcons.person,
                ),
                const FieldWidget(
                  name: "Last Name",
                  icon: CupertinoIcons.person,
                ),
                const FieldWidget(
                  name: "Email",
                  icon: Icons.mail_outline_rounded,
                ),
                const FieldWidget(
                  name: "Password",
                  icon: Icons.lock_outline,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 16.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          border: Border.all(
                            color: AppColors.gray2Color,
                            width: 0.8,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "By continuing you accept our Privacy Policy and",
                          style: TextStyles.caption_Regular.copyWith(
                            color: AppColors.gray2Color,
                          ),
                        ),
                        Text(
                          "Term of Use",
                          style: TextStyles.caption_Regular.copyWith(
                            color: AppColors.gray2Color,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: Dimensions.getStartedButtonHeight,
              width: Dimensions.getStartedButtonWidth,
              decoration: BoxDecoration(
                gradient: AppColors.blueLinear,
                borderRadius: BorderRadius.circular(
                  Dimensions.getStartedButtonRadius,
                ),
              ),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyles.largeText_Bold.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Spacer(),
                Container(
                  color: AppColors.gray3Color,
                  height: 1.0,
                  width: 140.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Or",
                    style: TextStyles.subtitle_Regular.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Container(
                  color: AppColors.gray3Color,
                  height: 1.0,
                  width: 140.0,
                ),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/img/signup_login/google.svg',
                  width: 50.0,
                  height: 50.0,
                ),
                SvgPicture.asset(
                  'assets/img/signup_login/facebook.svg',
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: TextStyles.mediumText_Regular.copyWith(
                  color: AppColors.blackColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Login",
                    style: TextStyles.mediumText_Medium.copyWith(
                      foreground: Paint()
                        ..shader = AppColors.logoLinear.createShader(
                          Rect.fromLTWH(0.0, 0.0, 200.0, 50.0),
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
