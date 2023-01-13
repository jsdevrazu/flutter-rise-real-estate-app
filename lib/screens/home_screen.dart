import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partice_project/components/app_input.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/home/explore_card.dart';
import 'package:partice_project/components/home/featured_card.dart';
import 'package:partice_project/components/home/home_category.dart';
import 'package:partice_project/components/home/home_header.dart';
import 'package:partice_project/components/home/property_card.dart';
import 'package:partice_project/components/home/row_title_home.dart';
import 'package:partice_project/components/home/top_agent.dart';
import 'package:partice_project/components/home/top_location.dart';
import 'package:partice_project/components/shared/screen.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/screens/featured/featured_screen.dart';
import 'package:partice_project/utils/route_name.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      isBackButton: false,
      isBottomTab: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          Row(
            children: [
              Text(
                "Hey",
                style: Theme.of(context).textTheme.headline1,
              ),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              Text(
                "Razu!",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.textPrimary),
              ),
            ],
          ),
          Text(
            "Let's start exploring",
            style: Theme.of(context).textTheme.headline3,
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
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
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          Container(
            height: height / 12,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              const HomeCategory(title: "All", active: true),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const HomeCategory(title: "House", active: false),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const HomeCategory(title: "Townhouse", active: false),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const HomeCategory(title: "Apparment", active: false),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const HomeCategory(title: "Condo", active: false),
            ]),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          Container(
            height: height / 4,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              const PropertyCard(
                  title: "Halloween\nSale!",
                  subtitle: "All discount up to 60%",
                  path: "lib/assets/images/property.jpg"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
              const PropertyCard(
                  title: "Townhouse\nSale!",
                  subtitle: "All discount up to 60%",
                  path: "lib/assets/images/property1.jpg"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
              const PropertyCard(
                  title: "Summer\nVacation",
                  subtitle: "All discount up to 60%",
                  path: "lib/assets/images/property2.jpg"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
            ]),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          RowTitleHome(
            title: "Featured Estates",
            subtitle: "view all",
            onPress: () {},
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Container(
            height: height / 4,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              const FeaturedCard(
                  path: "lib/assets/images/property2.jpg",
                  category: "Appartment",
                  title: "Sky Dandelions\nApartment",
                  rating: "4.9",
                  location: "Pabna, Bangladesh",
                  payment: "10"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
              const FeaturedCard(
                  path: "lib/assets/images/property1.jpg",
                  category: "Appartment",
                  title: "Sky Dandelions\nApartment",
                  rating: "4.9",
                  location: "Pabna, Bangladesh",
                  payment: "10"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
              const FeaturedCard(
                  path: "lib/assets/images/property.jpg",
                  category: "Appartment",
                  title: "Sky Dandelions\nApartment",
                  rating: "4.9",
                  location: "Pabna, Bangladesh",
                  payment: "10"),
              Gap(isWidth: true, isHeight: false, width: width * 0.05),
            ]),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          RowTitleHome(
            title: "Top Locations",
            subtitle: "explore",
            onPress: () {},
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Container(
            height: height / 15,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const TopLocation(
                  path: "lib/assets/images/property.jpg",
                  location: "Bali",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopLocation(
                  path: "lib/assets/images/property1.jpg",
                  location: "Jakartha",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopLocation(
                  path: "lib/assets/images/property2.jpg",
                  location: "Yogartha",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopLocation(
                  path: "lib/assets/images/property.jpg",
                  location: "Bali",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopLocation(
                  path: "lib/assets/images/property1.jpg",
                  location: "Jakartha",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopLocation(
                  path: "lib/assets/images/property2.jpg",
                  location: "Yogartha",
                ),
              ],
            ),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          RowTitleHome(
            title: "Top Estate Agent",
            subtitle: "explore",
            onPress: () {},
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Container(
            height: height / 8.5,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const TopAgent(
                    path: "lib/assets/images/profile.png", name: "Amanda"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopAgent(
                    path: "lib/assets/images/profile1.png", name: "Andserson"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopAgent(
                    path: "lib/assets/images/profile2.png", name: "Samtha"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopAgent(
                    path: "lib/assets/images/profile4.png", name: "Nice"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopAgent(
                    path: "lib/assets/images/profile2.png", name: "Samtha"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const TopAgent(
                    path: "lib/assets/images/profile4.png", name: "Nice"),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
              ],
            ),
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.03),
          RowTitleHome(
            title: "Nearby Estate Explore",
            subtitle: "view all",
            onPress: () {
              PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                context,
                settings: const RouteSettings(name: RoutesName.featuredScreen),
                screen: const FeaturedScreen(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Row(
            children: [
              const ExploreCard(
                title: "Win The Tower",
                rating: "4.9",
                location: "Pabna Sadar",
                isHeart: false,
                path:
                    "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=800",
              ),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const ExploreCard(
                title: "Townhouse Home",
                rating: "4.9",
                location: "Pabna Sadar",
                isHeart: false,
                path:
                    "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg?auto=compress&cs=tinysrgb&w=800",
              ),
            ],
          ),
          Gap(isWidth: false, isHeight: true, height: height * 0.02),
          Row(
            children: [
              const ExploreCard(
                title: "Win The Tower",
                rating: "4.9",
                location: "Pabna Sadar",
                isHeart: false,
                path:
                    "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=800",
              ),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              const ExploreCard(
                title: "Townhouse Home",
                rating: "4.9",
                location: "Pabna Sadar",
                isHeart: false,
                path:
                    "https://images.pexels.com/photos/87223/pexels-photo-87223.jpeg?auto=compress&cs=tinysrgb&w=800",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
