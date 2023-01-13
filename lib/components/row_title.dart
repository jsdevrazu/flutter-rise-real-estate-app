import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class RowTitle extends StatelessWidget {
  final String title;
  final Icon icon;
  final bool isNoneBorder;
  const RowTitle(
      {Key? key,
      required this.title,
      required this.icon,
      this.isNoneBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: isNoneBorder
          ? null
          : const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              color: Color(0xffECEDF3),
              width: 1.0,
            ))),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            child: CircleAvatar(
              backgroundColor: AppColors.textPrimary,
              child: icon,
            ),
          ),
          const Gap(
            isWidth: true,
            isHeight: false,
            width: 10,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: AppColors.faqColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
