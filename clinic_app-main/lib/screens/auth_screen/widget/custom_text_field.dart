import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.controller,
    required this.errorText,
  }) : super(key: key);

  final TextEditingController controller;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      controller: controller,
      cursorColor: AppColors.blue,
      decoration: InputDecoration(
        errorText: errorText,
        hintStyle: AppFonts.w700s17.copyWith(color: AppColors.darkGrey),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        hintText: '0 |_ _ _   _ _   _ _   _ _',
      ),
    );
  }
}
