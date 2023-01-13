import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';

class ExploreCard extends StatelessWidget {
  final String title, rating, location, path;
  final bool isHeart;
  const ExploreCard({
    Key? key,
    required this.location,
    required this.title,
    required this.rating,
    required this.path,
    required this.isHeart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Expanded(
        child: InkWell(
      onTap: () {
        print("cool");
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.inputBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 160,
                    image: NetworkImage(path),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        size: 20,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.01),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.01),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(rating)
                  ],
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.01),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColors.textPrimary,
                    ),
                    Text(
                      location,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 12),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
