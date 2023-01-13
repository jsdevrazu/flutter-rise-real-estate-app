import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:partice_project/constant/colors.dart';

class AccordionApp extends StatelessWidget {
  const AccordionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Accordion(
        maxOpenSections: 1,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: [
          AccordionSection(
            isOpen: true,
            rightIcon: const Icon(Icons.add, color: AppColors.textPrimary),
            headerBackgroundColor: AppColors.whiteColor,
            headerBackgroundColorOpened: AppColors.primaryColor,
            contentBorderColor: AppColors.whiteColor,
            contentBackgroundColor: AppColors.inputBackground,
            header: Text(
              'Why choose buy in Rise?',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            content: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: AppColors.textPrimary, fontSize: 14)),
            contentHorizontalPadding: 20,
          ),
          AccordionSection(
            isOpen: true,
            rightIcon: const Icon(Icons.add, color: AppColors.textPrimary),
            headerBackgroundColor: AppColors.whiteColor,
            headerBackgroundColorOpened: AppColors.primaryColor,
            contentBorderColor: AppColors.whiteColor,
            contentBackgroundColor: AppColors.inputBackground,
            header: Text(
              'Why choose buy in Rise?',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            content: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: AppColors.textPrimary, fontSize: 14)),
            contentHorizontalPadding: 20,
          ),
        ],
      ),
    );
  }
}
