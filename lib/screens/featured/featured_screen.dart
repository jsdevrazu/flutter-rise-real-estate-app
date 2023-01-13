import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:partice_project/components/app_input.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/home/explore_card.dart';
import 'package:partice_project/components/shared/screen.dart';
import 'package:partice_project/constant/colors.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  final searchInput = TextEditingController();
  final searchFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    searchInput.dispose();
    searchFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Screen(
      isBackButton: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: imageContainer("lib/assets/images/slider.png"),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: imageContainer("lib/assets/images/slider1.png"),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: imageContainer("lib/assets/images/slider2.png"),
                ),
              ]),
          Gap(
            isWidth: false,
            isHeight: true,
            height: height * 0.02,
          ),
          Text(
            "Featured Estates",
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: AppColors.textPrimary),
          ),
          Gap(
            isWidth: false,
            isHeight: true,
            height: height * 0.005,
          ),
          Text(
            "Our recommended real estates exclusive for you.",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 12,
                color: AppColors.seondaryTextColor,
                fontWeight: FontWeight.w300),
          ),
          Gap(
            isWidth: false,
            isHeight: true,
            height: height * 0.02,
          ),
          AppInput(
              myController: searchInput,
              focusNode: searchFocus,
              onFiledSubmitedValue: (value) {},
              keyBoardType: TextInputType.text,
              leftIcon: true,
              icon: Icon(Icons.search),
              isFilled: true,
              obscureText: false,
              hinit: "Find location...",
              onValidator: (value) {
                if (value.isEmpty) return;
              }),
          Gap(
            isWidth: false,
            isHeight: true,
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: '70 ',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.textPrimary),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'estates',
                        style: TextStyle(fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              Container(
                width: width / 3.5,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 25,
                      color: Color(0xffA1A5C1),
                    ),
                    Icon(
                      Icons.table_bar,
                      size: 25,
                      color: Color(0xffA1A5C1),
                    ),
                    Icon(
                      Icons.view_agenda,
                      size: 25,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(
            isWidth: false,
            isHeight: true,
            height: height * 0.03,
          ),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 20,
              runSpacing: 17,
              children: [
                Row(
                  children: const [
                    ExploreCard(
                      title: "Win The Tower",
                      rating: "4.9",
                      location: "Pabna Sadar",
                      isHeart: false,
                      path:
                          "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=800",
                    ),
                    ExploreCard(
                      title: "Townhouse Home",
                      rating: "4.9",
                      location: "Pabna Sadar",
                      isHeart: false,
                      path:
                          "https://images.pexels.com/photos/87223/pexels-photo-87223.jpeg?auto=compress&cs=tinysrgb&w=800",
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  imageContainer(path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(path),
      ),
    );
  }
}
