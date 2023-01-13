import 'package:flutter/material.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/header_title.dart';
import 'package:partice_project/components/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(isWidth: false, isHeight: true, height: height * 0.01),
                  const HeaderTitle(
                    title: "Create your ",
                    bottomTitle:
                        "quis nostrud exercitation ullamco laboris nisi ut.",
                    subtitle: "account",
                  ),
                  Gap(isWidth: false, isHeight: true, height: height * 0.04),
                  SignupForm()
                ],
              ),
            )),
      ),
    );
  }
}
