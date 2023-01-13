import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/app_input.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class AccountLocationScreen extends StatefulWidget {
  const AccountLocationScreen({super.key});

  @override
  State<AccountLocationScreen> createState() => _AccountLocationScreenState();
}

class _AccountLocationScreenState extends State<AccountLocationScreen> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
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
    return Scaffold(
        body: Stack(
      children: [
        const GoogleMap(
          initialCameraPosition: _kGooglePlex,
        ),
        Positioned(
          top: 50,
          left: 10,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chevron_left_sharp,
              size: 30,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Positioned(
            top: 100,
            left: 10,
            right: 20,
            child: AppInput(
                myController: searchInput,
                focusNode: searchFocus,
                onFiledSubmitedValue: (value) {},
                keyBoardType: TextInputType.text,
                leftIcon: true,
                icon: Icon(Icons.search),
                otherColor: true,
                isFilled: true,
                obscureText: false,
                hinit: "Find location...",
                onValidator: (value) {
                  if (value.isEmpty) return;
                })),
        Positioned(
          bottom: 100,
          left: 10,
          right: 20,
          child: AppButton(
            onPress: () {},
            title: "Choose your location",
            height: 65,
            textColor: AppColors.whiteColor,
            radius: 15,
          ),
        )
      ],
    ));
  }
}
