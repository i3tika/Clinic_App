import 'dart:math';

import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:clinic_app/core/widgets/app_button.dart';
import 'package:clinic_app/screens%20/auth_screen/create_profile_screen.dart';
import 'package:flutter/material.dart';

import 'create_profile_screen.dart';

class ConfirmCodeScreen extends StatefulWidget {
  ConfirmCodeScreen({super.key, required this.code});
  int code;
  bool obsText = true;
  TextEditingController controllerCode = TextEditingController();
  String? errorText;
  @override
  State<ConfirmCodeScreen> createState() => _ConfirmCodeScreenState();
}

class _ConfirmCodeScreenState extends State<ConfirmCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.blackWithOpacity54,
          ),
        ),
        title: const Text(
          'Подтверждение номера',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Введите код из смс',
                style: AppFonts.w500s22,
              ),
              const SizedBox(
                height: 133,
              ),
              TextField(
                keyboardType: TextInputType.number,
                obscuringCharacter: '*',
                controller: widget.controllerCode,
                obscureText: widget.obsText,
                decoration: InputDecoration(
                  errorText: widget.errorText,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.darkGrey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.darkGrey),
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.darkGrey),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      widget.obsText = !widget.obsText;
                      setState(() {});
                    },
                    child: const CircleAvatar(
                      radius: 17.5,
                      backgroundColor: AppColors.lightGrey,
                      child: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ),
                  prefixIcon: const Text(
                    'Код',
                    style: AppFonts.w600s18,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {
                  widget.code = Random().nextInt(8999) + 1000;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        widget.code.toString(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Получить код повторно',
                  style: AppFonts.w400s15.copyWith(color: AppColors.blueButton),
                ),
              ),
              const SizedBox(height: 108),
              Center(
                child: AppButton(
                  title: 'Далее',
                  onPressed: () {
                    if (widget.code.toString() == widget.controllerCode.text) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateProfileScreen()));
                    } else {
                      widget.errorText = 'Неверный код';
                    }
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
