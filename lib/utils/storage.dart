import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> myStroage() async {
  return await SharedPreferences.getInstance();
}
