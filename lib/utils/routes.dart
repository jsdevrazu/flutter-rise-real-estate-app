import 'package:flutter/material.dart';
import 'package:partice_project/screens/account_empty_screen.dart';
import 'package:partice_project/screens/account_location_screen.dart';
import 'package:partice_project/screens/account_profile_screen.dart';
import 'package:partice_project/screens/agentProfileScreen/agent_profile_screen.dart';
import 'package:partice_project/screens/dashboard_screen.dart';
import 'package:partice_project/screens/faq_screen.dart';
import 'package:partice_project/screens/favourite_screen.dart';
import 'package:partice_project/screens/featured/featured_screen.dart';
import 'package:partice_project/screens/featuredDetailsScreen/featured_details_screen.dart';
import 'package:partice_project/screens/forgot_password_screen.dart';
import 'package:partice_project/screens/gallery_grid_view.dart';
import 'package:partice_project/screens/home_screen.dart';
import 'package:partice_project/screens/login_screen.dart';
import 'package:partice_project/screens/onboarding_screen.dart';
import 'package:partice_project/screens/otp_screen.dart';
import 'package:partice_project/screens/promotion/promotion_screen.dart';
import 'package:partice_project/screens/search_screen.dart';
import 'package:partice_project/screens/signup_screen.dart';
import 'package:partice_project/screens/splash_screen.dart';
import 'package:partice_project/screens/started_screen.dart';
import 'package:partice_project/screens/topAgentScreen/top_agent_screen.dart';
import 'package:partice_project/screens/topLocationDetailsScreen/top_location_details_screen.dart';
import 'package:partice_project/screens/topLocationScreen/top_location_screen.dart';
import 'package:partice_project/screens/user_account_scree.dart';
import 'package:partice_project/utils/route_name.dart';
import 'package:partice_project/constant/colors.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.onboarding_screen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case RoutesName.startedScreen:
        return MaterialPageRoute(builder: (context) => const StartedScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case RoutesName.faqScreen:
        return MaterialPageRoute(builder: (context) => const FaqScreen());
      case RoutesName.galleryGridView:
        return MaterialPageRoute(
            builder: (context) => const GalleryGridScreen());
      case RoutesName.accountEmptyScreen:
        return MaterialPageRoute(
            builder: (context) => const AccountEmptyScreen());
      case RoutesName.accountLocationScreen:
        return MaterialPageRoute(
            builder: (context) => const AccountLocationScreen());
      case RoutesName.otpScreen:
        return MaterialPageRoute(
            builder: (context) => OtpScreen(data: settings.arguments as Map));
      case RoutesName.forgotPasswordScreen:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordScreen());
      case RoutesName.userAccountScreen:
        return MaterialPageRoute(
            builder: (context) => const UserAccountScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.authScreen:
        return MaterialPageRoute(builder: (context) => const DashboardScreen());
      case RoutesName.searchScreen:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case RoutesName.favoriteScreen:
        return MaterialPageRoute(builder: (context) => const FavouriteScreen());
      case RoutesName.promotionScreem:
        return MaterialPageRoute(builder: (context) => const PromotionScreen());
      case RoutesName.featuredScreen:
        return MaterialPageRoute(builder: (context) => const FeaturedScreen());
      case RoutesName.featuredDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const FeaturedDetailsScreen());
      case RoutesName.topLocationScreen:
        return MaterialPageRoute(
            builder: (context) => const TopLocationScreen());
      case RoutesName.topLocationDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const TopLocationDetails());
      case RoutesName.topAgentScreen:
        return MaterialPageRoute(builder: (context) => const TopAgentScreen());
      case RoutesName.agentProfileScreen:
        return MaterialPageRoute(
            builder: (context) => const AgentProfileScreen());
      case RoutesName.profileScreen:
        return MaterialPageRoute(
            builder: (context) => const AccountProfileScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text(
                "Invalid Route",
                style: TextStyle(color: AppColors.primaryColor, fontSize: 20),
              ),
            ),
          );
        });
    }
  }
}
