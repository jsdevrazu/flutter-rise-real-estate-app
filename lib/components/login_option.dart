import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  final String path;
  const LoginOption({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image(
      fit: BoxFit.cover,
      image: AssetImage(path),
    ));
  }
}
