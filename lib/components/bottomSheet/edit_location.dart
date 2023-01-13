import 'package:flutter/material.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/bottomSheet/location_data.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          builder: (BuildContext context) {
            return Container(
              height: appHeight / 0.75,
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Select Location",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        AppButton(
                          onPress: () {},
                          title: "Edit",
                          width: 100,
                          height: 60,
                          bgColor: AppColors.textPrimary,
                          textColor: AppColors.whiteColor,
                        )
                      ],
                    ),
                    Gap(
                      isWidth: false,
                      isHeight: true,
                      height: appHeight * 0.04,
                    ),
                    const LocationData(
                      isActive: true,
                      location:
                          "Srengseng, Kembangan, West Jakarta\nCity, Jakarta 11630",
                    ),
                    Gap(
                      isWidth: false,
                      isHeight: true,
                      height: appHeight * 0.02,
                    ),
                    const LocationData(
                      isActive: false,
                      location:
                          "Srengseng, Kembangan, West Jakarta\nCity, Jakarta 11630",
                    ),
                    Gap(
                      isWidth: false,
                      isHeight: true,
                      height: appHeight * 0.04,
                    ),
                    AppButton(
                      onPress: () {},
                      title: "Choese Location",
                      textColor: AppColors.whiteColor,
                      radius: 15,
                      height: 65,
                      width: width / 1.20,
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.primaryColor)),
        child: const Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2022/10/20/11/26/landscape-7534634_640.jpg"),
          ),
        ),
      ),
    );
  }
}
