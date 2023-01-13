import 'package:flutter/material.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/header_title.dart';
import 'package:partice_project/components/otp_card.dart';

class OtpScreen extends StatefulWidget {
  final dynamic data;
  const OtpScreen({this.data, Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                  HeaderTitle(
                    title: "Enter the ",
                    bottomTitle: "Enter the 4 digit code that we just sent to",
                    isBottomTitle: true,
                    bottomTitle2: widget.data['email'],
                    subtitle: "code",
                  ),
                  Gap(isWidth: false, isHeight: true, height: height * 0.09),
                  const OtpCard()
                ],
              ),
            )),
      ),
    );
  }
}
