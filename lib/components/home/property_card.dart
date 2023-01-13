import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class PropertyCard extends StatelessWidget {
  final String title, subtitle, path;
  final bool isBig;
  const PropertyCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.path,
      this.isBig = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height / 4,
      width: isBig ? width / 1 : width / 1.35,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken))),
      padding: const EdgeInsets.only(top: 50.0, left: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColors.whiteColor, fontSize: 12),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          InkWell(
            onTap: () {
              print("cool");
            },
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.textPrimary,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "View",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
