import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:signup_login/src/widgets/field.dart';
import 'package:signup_login/src/widgets/small_field.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              'assets/img/signup_login/register_screen_2.svg',
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            Text(
              'Let\'s complete your profile',
              style: TextStyles.h4_Bold.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            Text(
              'It will help us to know more about you!',
              style: TextStyles.smallText_Regular.copyWith(
                color: AppColors.gray1Color,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FieldWidget(
                  name: "Choose Gender",
                  icon: CupertinoIcons.person_2,
                ),
                FieldWidget(
                  name: "Date of Birth",
                  icon: CupertinoIcons.calendar,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SmallFieldWidget(
                      name: "Your Weight",
                      icon: Icons.monitor_weight_outlined,
                    ),
                    SizedBox(
                      width: 15,
                      height: 48,
                    ),
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        gradient: AppColors.purpleLinear,
                        borderRadius: BorderRadius.circular(
                          14.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'KG',
                          style: TextStyles.smallText_Medium.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SmallFieldWidget(
                      name: "Your Height",
                      icon: Icons.swap_vert,
                    ),
                    SizedBox(
                      width: 15,
                      height: 48,
                    ),
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        gradient: AppColors.purpleLinear,
                        borderRadius: BorderRadius.circular(
                          14.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CM',
                          style: TextStyles.smallText_Medium.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: Dimensions.getStartedButtonWidth,
              height: Dimensions.getStartedButtonHeight,
              decoration: BoxDecoration(
                gradient: AppColors.blueLinear,
                borderRadius: BorderRadius.circular(
                  Dimensions.getStartedButtonRadius,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Next",
                    style: TextStyles.largeText_Bold.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.chevron_forward,
                    color: AppColors.whiteColor,
                    size: 20.0,
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
