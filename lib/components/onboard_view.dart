import 'package:flutter/material.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/route_name.dart';
import 'package:partice_project/utils/storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardView extends StatelessWidget {
  final PageController controller;
  final String title, subtitle, path;
  final bool isLastPage;

  const OnboardView({
    Key? key,
    this.isLastPage = false,
    required this.controller,
    required this.title,
    required this.subtitle,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: AssetImage("lib/assets/logo.png"),
              ),
              AppButton(
                onPress: () {
                  controller.jumpToPage(2);
                },
                title: "Skip",
                width: 100,
                isMarginLeft: true,
                bgColor: AppColors.skipColor,
              ),
            ],
          ),
          const Gap(
            isWidth: false,
            isHeight: true,
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              title,
              style:
                  Theme.of(context).textTheme.headline3!.copyWith(height: 1.4),
            ),
          ),
          const Gap(
            isWidth: false,
            isHeight: true,
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 14, height: 1.4),
            ),
          ),
          const Gap(
            isWidth: false,
            isHeight: true,
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        spacing: 16,
                        dotColor: AppColors.whiteColor,
                        activeDotColor: AppColors.primaryColor),
                    onDotClicked: (index) {
                      controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                  ),
                ),
                const Gap(
                  isWidth: false,
                  isHeight: true,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: isLastPage
                      ? AppButton(
                          onPress: () async {
                            final prefs = await myStroage();
                            prefs.setBool("showOnBoard", true);
                            Navigator.pushNamed(
                                context, RoutesName.startedScreen);
                          },
                          title: "Get Started",
                          width: MediaQuery.of(context).size.width * 0.5,
                          isMarginLeft: true,
                          bgColor: AppColors.primaryColor,
                          textColor: AppColors.whiteColor,
                        )
                      : AppButton(
                          onPress: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          title: "Next",
                          width: MediaQuery.of(context).size.width * 0.5,
                          isMarginLeft: true,
                          bgColor: AppColors.primaryColor,
                          textColor: AppColors.whiteColor,
                        ),
                ),
                const Gap(
                  isWidth: false,
                  isHeight: true,
                  height: 30,
                )
              ],
            ),
            //padding: <-- Using to shift text position a little bit for your requirement
          )
        ],
      ),
    );
  }
}
