import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/home/property_card.dart';
import 'package:partice_project/components/shared/screen.dart';
import 'package:partice_project/constant/colors.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Screen(
      isBackButton: true,
      child: Column(
        children: [
          const PropertyCard(
            title: "Halloween\nSale!",
            subtitle: "All discount up to 60%",
            path: "lib/assets/images/property.jpg",
            isBig: true,
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          RichText(
            text: TextSpan(
              text: 'Limited time ',
              style: Theme.of(context).textTheme.headline2,
              children: const <TextSpan>[
                TextSpan(
                    text: 'Halloween Sale! ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'is coming back! '),
              ],
            ),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.calendar,
                size: 15,
                color: AppColors.textPrimary,
              ),
              Gap(isWidth: true, isHeight: false, width: width * 0.02),
              Text("December 27, 2022")
            ],
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Container(
            height: height / 10,
            width: width / 1,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color(0xfff3f9ec),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  width: 53,
                  height: 53,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.primaryColor),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.mic_off,
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.04),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HLWN40",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Use this coupon to get 40% off on your transaction",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w300, fontSize: 11),
                    ),
                  ],
                )
              ],
            ),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores")
        ],
      ),
    );
  }
}
