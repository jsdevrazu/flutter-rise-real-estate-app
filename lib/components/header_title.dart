import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class HeaderTitle extends StatelessWidget {
  final String title, title1, subtitle, middle, bottomTitle, bottomTitle2;
  final bool isMiddle, isBottomTitle, isUnderTitle;
  const HeaderTitle({
    Key? key,
    required this.title,
    this.title1 = "",
    this.subtitle = "",
    required this.bottomTitle,
    this.middle = " & ",
    this.bottomTitle2 = "",
    this.isMiddle = false,
    this.isUnderTitle = false,
    this.isBottomTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: isMiddle
              ? [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    middle,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 25),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ]
              : [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: AppColors.textPrimary, fontSize: 25),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
        ),
        isUnderTitle
            ? Text(
                title1,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )
            : Text(""),
        Gap(
            isWidth: false,
            isHeight: true,
            height: isUnderTitle ? height * 0.02 : 0),
        Text(
          bottomTitle,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: AppColors.faqColor, fontSize: 12),
        ),
        isBottomTitle
            ? Text(
                bottomTitle2,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.textPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            : Text("")
      ],
    );
  }
}
