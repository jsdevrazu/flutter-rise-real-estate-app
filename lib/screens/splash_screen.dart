import 'package:flutter/material.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Helper helper = Helper();

  @override
  void initState() {
    super.initState();
    helper.isOnBoarding(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(10, 10),
          // near the top right
          colors: <Color>[
            Color(0xff21628A),
            Color(0xff234F68),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.clamp,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage("lib/assets/logo.png"),
              ),
            ),
            Text(
              "Rise",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColors.whiteColor),
            ),
            Text(
              "Real Estate",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColors.whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
