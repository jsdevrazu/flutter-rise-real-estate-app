import 'package:flutter/material.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/login_footer.dart';
import 'package:partice_project/components/login_option.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/route_name.dart';
import 'dart:io' show Platform;

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: Platform.isIOS ? 0 : 15),
          child: Column(
            children: [
              Row(
                children: const [
                  LoginOption(path: "lib/assets/images/login1.png"),
                  Gap(isWidth: true, isHeight: false, width: 10),
                  LoginOption(path: "lib/assets/images/login2.png"),
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.01),
              Row(
                children: const [
                  LoginOption(path: "lib/assets/images/login3.png"),
                  Gap(isWidth: true, isHeight: false, width: 10),
                  LoginOption(path: "lib/assets/images/login4.png"),
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.035),
              Row(
                children: [
                  Text(
                    "Ready to ",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "explore?",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.035),
              AppButton(
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.loginScreen);
                },
                title: "Continue with Email",
                textColor: AppColors.whiteColor,
                isButtonIcon: true,
                height: height * 0.08,
                radius: 15,
              ),
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
