import 'package:flutter/material.dart';
import 'package:partice_project/components/shared/screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      isBackButton: false,
      isBottomTab: true,
      child: Text("cool"),
    );
  }
}
