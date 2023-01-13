import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:partice_project/components/app_button.dart';
import 'package:partice_project/components/app_input.dart';
import 'package:partice_project/components/bottom_sheet.dart';
import 'package:partice_project/components/gap.dart';
import 'package:partice_project/constant/colors.dart';
import 'package:partice_project/utils/helper.dart';
import 'package:partice_project/utils/route_name.dart';

class AccountForm extends StatefulWidget {
  const AccountForm({super.key});

  @override
  State<AccountForm> createState() => _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final fullname = TextEditingController();
  final phoneNumber = TextEditingController();
  final focusNodeEmail = FocusNode();
  final focusNodePhone = FocusNode();
  final focusNodeFullName = FocusNode();
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      // ignore: unused_local_variable
      final tempImage = File(image.path);
      setState(() {
        this.image = tempImage;
      });
    } on PlatformException catch (e) {
      print('Upload faild $e');
    }
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    fullname.dispose();
    phoneNumber.dispose();
    focusNodeEmail.dispose();
    focusNodePhone.dispose();
    focusNodeFullName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    Helper helper = Helper();
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: image == null
                    ? AssetImage("lib/assets/logo.png")
                    : FileImage(image!) as ImageProvider,
              ),
              Positioned(
                  bottom: 0,
                  right: -25,
                  child: RawMaterialButton(
                    onPressed: () => pickImage(),
                    elevation: 2.0,
                    fillColor: AppColors.inputBackground,
                    // ignore: sort_child_properties_last
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.textFieldFocusBorderColor,
                      size: 15,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    shape: const CircleBorder(),
                  )),
            ],
          ),
        ),
        Gap(
          isWidth: false,
          isHeight: true,
          height: height * 0.02,
        ),
        Form(
          key: _formkey,
          child: Column(
            children: [
              AppInput(
                  myController: fullname,
                  focusNode: focusNodeFullName,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.text,
                  obscureText: false,
                  isFilled: true,
                  hinit: "Enter fullname",
                  leftIcon: true,
                  icon: const Icon(Icons.man),
                  onValidator: (value) {
                    if (value.isEmpty)
                      return 'Enter fullname';
                    else if (value.length < 3)
                      return "Full name at least 3 characters";
                  }),
              Gap(isWidth: false, isHeight: true, height: height * 0.019),
              AppInput(
                  myController: email,
                  focusNode: focusNodeEmail,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.emailAddress,
                  obscureText: false,
                  isFilled: true,
                  hinit: "Enter Email",
                  leftIcon: true,
                  icon: const Icon(Icons.email),
                  onValidator: (value) {
                    if (value.isEmpty)
                      return 'Enter email';
                    else if (!helper.emailValid(value))
                      return "Enter invalid email";
                  }),
              Gap(isWidth: false, isHeight: true, height: height * 0.019),
              AppInput(
                  myController: phoneNumber,
                  focusNode: focusNodePhone,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.phone,
                  obscureText: false,
                  hinit: "Enter Phone Number",
                  leftIcon: true,
                  icon: const Icon(Icons.phone),
                  isFilled: true,
                  onValidator: (value) {
                    if (value.isEmpty) return 'Enter Phonenumber';
                  }),
            ],
          ),
        ),
        Gap(isWidth: false, isHeight: true, height: height * 0.09),
        const BottomSheetModal(title: "Next", height: 65),
      ],
    );
  }
}
