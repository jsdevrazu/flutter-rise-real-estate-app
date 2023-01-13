import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class AppButton extends StatelessWidget {
  final bool loading, iconBtn;
  final VoidCallback onPress;
  final String title;
  final Color bgColor, textColor;
  final double width, height, radius;
  final Icon icon;
  final bool isMarginLeft;
  final bool isButtonIcon;
  final Widget child;

  const AppButton(
      {Key? key,
      this.width = double.infinity,
      this.height = 50,
      this.radius = 30,
      this.child = const Icon(Icons.email),
      this.isMarginLeft = false,
      this.iconBtn = false,
      this.isButtonIcon = false,
      this.icon = const Icon(
        Icons.email,
        color: AppColors.whiteColor,
        size: 25,
      ),
      this.loading = false,
      required this.onPress,
      this.bgColor = AppColors.primaryColor,
      this.textColor = AppColors.primaryTextTextColor,
      this.title = "default"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: loading ? null : onPress,
        child: iconBtn
            ? Container(
                decoration: BoxDecoration(
                    color: Color(0xffF5F4F8),
                    borderRadius: BorderRadius.circular(15)),
                child: child,
                width: MediaQuery.of(context).size.width / 2.28,
                height: MediaQuery.of(context).size.height / 11,
              )
            : Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isMarginLeft ? 10 : 0),
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(radius)),
                  child: loading
                      ? const Center(
                          child: CircularProgressIndicator(
                              color: AppColors.whiteColor),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: isButtonIcon
                              ? [
                                  icon,
                                  const Gap(
                                      isWidth: true,
                                      isHeight: false,
                                      width: 10),
                                  Center(
                                    child: Text(
                                      title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                              fontSize: 16, color: textColor),
                                    ),
                                  ),
                                ]
                              : [
                                  Center(
                                    child: Text(
                                      title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                              fontSize: 16, color: textColor),
                                    ),
                                  ),
                                ],
                        ),
                ),
              ));
  }
}
