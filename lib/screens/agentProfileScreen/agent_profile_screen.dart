import 'package:flutter/material.dart';
import 'package:partice_project/components/shared/screen.dart';

class AgentProfileScreen extends StatefulWidget {
  const AgentProfileScreen({super.key});

  @override
  State<AgentProfileScreen> createState() => _AgentProfileScreenState();
}

class _AgentProfileScreenState extends State<AgentProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      isBackButton: false,
      child: Text("agent profile"),
    );
  }
}
