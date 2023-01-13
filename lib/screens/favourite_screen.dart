import 'package:flutter/material.dart';
import 'package:partice_project/components/shared/screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      isBackButton: false,
      isBottomTab: true,
      child: Text("cool"),
    );
  }
}
