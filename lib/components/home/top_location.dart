import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class TopLocation extends StatelessWidget {
  final String location, path;
  const TopLocation({Key? key, required this.location, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
            ),
          ),
          Gap(isWidth: true, isHeight: false, width: width * 0.02),
          Text(
            location,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: AppColors.textPrimary, fontSize: 12),
          ),
          Gap(isWidth: true, isHeight: false, width: width * 0.02)
        ],
      ),
    );
  }
}
