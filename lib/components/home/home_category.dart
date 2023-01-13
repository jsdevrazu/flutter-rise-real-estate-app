import 'package:flutter/material.dart';
import 'package:partice_project/constant/colors.dart';

class HomeCategory extends StatefulWidget {
  final String title;
  final bool active;

  const HomeCategory({Key? key, required this.title, required this.active})
      : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late bool isActive;

  void initState() {
    isActive = widget.active;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: () => {
        setState(() {
          isActive = !isActive;
        })
      },
      child: Container(
        width: width / 4,
        decoration: BoxDecoration(
            color: isActive ? AppColors.textPrimary : AppColors.inputBackground,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(widget.title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color:
                      isActive ? AppColors.whiteColor : AppColors.textPrimary)),
        ),
      ),
    );
  }
}
