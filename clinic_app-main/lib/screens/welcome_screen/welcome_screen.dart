import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:clinic_app/core/widgets/app_button.dart';
import 'package:clinic_app/screens%20/auth_screen/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../auth_screen/auth_screen.dart';
import 'widgets/text_and_icon_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
            color: AppColors.black,
          )
        ],
        backgroundColor: AppColors.white,
        title: const Text(
          'Профиль',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Зачем нужен профиль?',
              style: AppFonts.w500s22,
            ),
            const SizedBox(
              height: 25,
            ),
            const TextAndIconWidget(
              image: AppImgaes.hospital,
              text: 'Записывайтесь на прием к самым лучшим специалистам',
            ),
            const SizedBox(
              height: 30,
            ),
            const TextAndIconWidget(
              image: AppImgaes.clipboard,
              text:
                  'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
            ),
            const SizedBox(
              height: 30,
            ),
            const TextAndIconWidget(
              image: AppImgaes.speech,
              text:
                  'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
            ),
            const SizedBox(
              height: 30,
            ),
            const TextAndIconWidget(
              image: AppImgaes.bell,
              text:
                  'Получайте уведомления о приеме или о поступивших сообщениях',
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: AppButton(
                title: 'Войти',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
