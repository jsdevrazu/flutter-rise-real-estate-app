import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/header_title.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/route_name.dart';

class AccountEmptyScreen extends StatefulWidget {
  const AccountEmptyScreen({super.key});

  @override
  State<AccountEmptyScreen> createState() => _AccountEmptyScreenState();
}

class _AccountEmptyScreenState extends State<AccountEmptyScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(43.404191943055125, -113.04084319092713),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: AppPadding(
            padddingValue: 15,
            child: Column(
              children: [
                const HeaderTitle(
                  title: "Add your ",
                  bottomTitle:
                      "You can edit this later on your account setting.",
                  subtitle: "location",
                ),
                Gap(isWidth: false, isHeight: true, height: height * 0.03),
                Container(
                  width: double.infinity,
                  height: height * 0.35,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: GoogleMap(
                    initialCameraPosition: _kGooglePlex,
                    mapType: MapType.hybrid,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
                Gap(isWidth: false, isHeight: true, height: height * 0.04),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RoutesName.accountLocationScreen);
                  },
                  child: Container(
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        color: AppColors.inputBackground,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Gap(
                                isWidth: true, isHeight: false, width: 10),
                            const Icon(
                              Icons.location_pin,
                              color: AppColors.textPrimary,
                              size: 20,
                            ),
                            const Gap(
                                isWidth: true, isHeight: false, width: 10),
                            Text(
                              "Location details",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.textPrimary),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.chevron_right_sharp,
                              color: AppColors.textPrimary,
                            ),
                            Gap(isWidth: true, isHeight: false, width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Gap(isWidth: false, isHeight: true, height: height * 0.1),
                AppButton(
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.galleryGridView);
                  },
                  title: "Next",
                  textColor: AppColors.whiteColor,
                  height: 60,
                )
              ],
            )),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
