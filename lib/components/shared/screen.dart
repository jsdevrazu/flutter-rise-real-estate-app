import 'package:flutter/material.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/route_name.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final bool isBackButton, isActions, isBottomTab;
  const Screen(
      {Key? key,
      this.isActions = false,
      this.isBottomTab = false,
      required this.child,
      required this.isBackButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isBackButton
          ? AppBar(
              elevation: 0,
              actions: isActions
                  ? [
                      AppButton(
                        onPress: () {
                          Navigator.pushNamed(
                              context, RoutesName.userAccountScreen);
                        },
                        title: "Next",
                        width: 100,
                        isMarginLeft: true,
                        bgColor: AppColors.primaryColor,
                        textColor: AppColors.whiteColor,
                      )
                    ]
                  : null,
            )
          : null,
      body: SafeArea(
        child: AppPadding(
            padddingValue: 15,
            child: SingleChildScrollView(
              child: child,
            )),
      ),
    );
  }
}
