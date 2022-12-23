import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_fonts.dart';

class DoctorsCard extends StatelessWidget {
  const DoctorsCard({
    Key? key,
    required this.img,
    required this.number,
    required this.name,
    required this.prof,
    required this.comm, required this.star,
  }) : super(key: key);

  final String img;
  final int number;
  final String name;
  final String prof;
  final String comm;
  final String star;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        color: AppColors.white,
        height: 76,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage(img),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Кардиолог $number',
                  prof,
                  style: AppFonts.w300s15,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  // 'Айбек Сатыбалдиев',
                  name,
                  style: AppFonts.w500s15,
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            IconPlusText(
              title: star,
              icons: Icons.star,
            ),
            const SizedBox(
              width: 10,
            ),
            IconPlusText(
              title: comm,
              icons: Icons.comment,
            ),
          ],
        ),
      ),
    );
  }
}

class IconPlusText extends StatelessWidget {
  const IconPlusText({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);
  final String title;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons),
        const SizedBox(
          height: 8,
        ),
        Text(title),
      ],
    );
  }
}
