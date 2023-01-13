import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class LocationData extends StatelessWidget {
  final bool isActive;
  final String location;
  const LocationData({Key? key, required this.isActive, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      width: width / 1,
      height: appHeight / 10,
      decoration: BoxDecoration(
          color: isActive ? AppColors.textPrimary : AppColors.whiteColor,
          border: Border.all(width: 1, color: AppColors.inputBackground),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Gap(
            isWidth: true,
            isHeight: true,
            width: width * 0.03,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.inputBackground,
            ),
            child: const Center(
              child: Icon(
                Icons.location_on,
                size: 20,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Gap(
            isWidth: true,
            isHeight: true,
            width: width * 0.03,
          ),
          Text(
            location,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: isActive ? AppColors.whiteColor : AppColors.textPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
