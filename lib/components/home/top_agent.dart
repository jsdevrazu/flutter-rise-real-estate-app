import 'package:flutter/material.dart';

class TopAgent extends StatelessWidget {
  final String path, name;
  const TopAgent({Key? key, required this.name, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(path),
        ),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
        )
      ],
    );
  }
}
