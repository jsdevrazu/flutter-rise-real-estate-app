import 'package:flutter/material.dart';
import 'package:partice_project/components/app_input.dart';
import 'package:partice_project/components/app_padding.dart';
import 'package:partice_project/components/buyer_view.dart';
import 'package:partice_project/components/estate_view.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/components/header_title.dart';
import 'package:partice_project/components/row_title.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/types/faq_items_model.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final searchController = TextEditingController();
  final focusNodeSearch = FocusNode();

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
                      title: "FAQ",
                      bottomTitle:
                          "Find answer to your problem using this app.",
                      subtitle: "Support",
                      isMiddle: true,
                    ),
                    Gap(isWidth: false, isHeight: true, height: height * 0.03),
                    const RowTitle(
                        title: "Visit our website",
                        icon: Icon(Icons.four_g_plus_mobiledata,
                            size: 15, color: AppColors.whiteColor)),
                    Gap(isWidth: false, isHeight: true, height: height * 0.02),
                    const RowTitle(
                        title: "Email us",
                        icon: Icon(
                          Icons.email,
                          size: 15,
                          color: AppColors.whiteColor,
                        )),
                    Gap(isWidth: false, isHeight: true, height: height * 0.02),
                    const RowTitle(
                        title: "Terms of service",
                        isNoneBorder: true,
                        icon: Icon(Icons.supervised_user_circle,
                            size: 15, color: AppColors.whiteColor)),
                    Gap(isWidth: false, isHeight: true, height: height * 0.03),
                    AppInput(
                        myController: searchController,
                        focusNode: focusNodeSearch,
                        isFilled: true,
                        leftIcon: true,
                        icon: const Icon(Icons.search),
                        onFiledSubmitedValue: (value) {
                          print(value);
                        },
                        keyBoardType: TextInputType.text,
                        obscureText: false,
                        hinit: "Try to 'how to'",
                        onValidator: (value) {
                          if (value.isEmpty) return "Search value can't empty";
                        }),
                    Gap(isWidth: false, isHeight: true, height: height * 0.02),
                    Container(
                      child: DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.inputBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TabBar(
                                unselectedLabelColor: const Color(0xffA1A5C1),
                                indicatorSize: TabBarIndicatorSize.label,
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor),
                                tabs: [
                                  Tab(
                                    child: Container(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text("Buyer",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1)),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Estate Agent",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height / 4,
                              child: const TabBarView(
                                children: [
                                  BuyerView(),
                                  EstateView(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
