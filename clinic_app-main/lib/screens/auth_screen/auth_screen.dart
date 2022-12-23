import 'dart:math';

import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:clinic_app/core/widgets/app_button.dart';
import 'package:clinic_app/screens%20/auth_screen/confrim_code_page.dart';
import 'package:clinic_app/screens%20/auth_screen/widget/custom_text_field.dart';
import 'package:clinic_app/screens/auth_screen/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'confrim_code_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

String? errorText;

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    int code = Random().nextInt(8999) + 1000;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: AppColors.blackWithOpacity54,
          ),
        ),
        title: const Text(
          'Вход',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Войти',
                style: AppFonts.w700s34,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Номер телефона',
                style: AppFonts.w400s15,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                errorText: errorText,
                controller: controller,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'На указанный вами номер придет \nоднократное СМС-сообщение с кодом \nподтверждения.',
                style: AppFonts.w400s15.copyWith(color: AppColors.darkGrey),
              ),
              const SizedBox(height: 108),
              Center(
                child: AppButton(
                  title: 'Далее',
                  onPressed: () {
                    if (controller.text.length == 10) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          code.toString(),
                        ),
                      ));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmCodeScreen(
                            code: code,
                          ),
                        ),
                      );
                    } else {
                      errorText = 'Некорректный номер';
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
