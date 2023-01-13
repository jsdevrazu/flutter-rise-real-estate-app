import 'package:flutter/material.dart';
import 'package:partice_project/components/shared/screen.dart';

class TopLocationDetails extends StatefulWidget {
  const TopLocationDetails({super.key});

  @override
  State<TopLocationDetails> createState() => _TopLocationDetailsState();
}

class _TopLocationDetailsState extends State<TopLocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      isBackButton: false,
      child: Text("top location details"),
    );
  }
}
