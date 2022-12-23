import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../profile_screen/widgets/doctors_card.dart';

class DoctorsScreen extends StatelessWidget {
  DoctorsScreen({super.key});

  final List numbers = [for (int i = 0; i <= 6; i++) i];

  final List<String> img = [
    AppImgaes.abstact,
    AppImgaes.bell,
    AppImgaes.hospital,
    AppImgaes.car,
    AppImgaes.clipboard,
    AppImgaes.user,
    AppImgaes.favorite,
    AppImgaes.doctor,
    AppImgaes.doctor1,
    AppImgaes.doctor2,
    AppImgaes.doctor3,
    AppImgaes.doctor4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Hello doctor'),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //   ListView.builder(
              //   itemCount: numbers.length,
              //   shrinkWrap: true,
              //   itemBuilder: (BuildContext context, int index) {
              //     return DoctorsCard(img: img[index], number: numbers[index],name: 'Будешов Максат',);

              //   },

              // ),
              // DoctorsCard(img: AppImgaes.bell, prof: 'Стамотлого', number: 1, name: 'Budeshov Tiek', comm: '4',),
              // DoctorsCard(img: AppImgaes.car, prof: 'Стамотлого', number: 2, name: 'kurasaki Akira', comm: '16',),
              Container(
                height: 253,
                width: 375,
                color: AppColors.lightGrey,
              ),
              DoctorsCard(
                img: AppImgaes.doctor,
                prof: 'Кардиолог',
                number: 1,
                name: 'Алексей Захаренко',
                comm: '12',
                star: '5.9',
              ),
              DoctorsCard(
                img: AppImgaes.doctor1,
                prof: 'Кардиолог',
                number: 2,
                name: 'Чынгыз Акылбеков',
                comm: '5',
                star: '9',
              ),
              DoctorsCard(
                img: AppImgaes.doctor2,
                prof: 'Кардиолог',
                number: 3,
                name: 'Айбек Сатыбалдиев',
                comm: '9',
                star: '5.8',
              ),
              DoctorsCard(
                img: AppImgaes.doctor3,
                prof: 'Кардиолог',
                number: 4,
                name: 'Рината Сафиуллина',
                comm: '11',
                star: '7',
              ),
              DoctorsCard(
                img: AppImgaes.doctor4,
                prof: 'Кардиолог',
                number: 5,
                name: 'Рафаэль Шабутдинов',
                comm: '1',
                star: '1',
              ),
              DoctorsCard(
                img: AppImgaes.clipboard,
                prof: 'Кардиолог',
                number: 6,
                name: 'Будешов Тилек   ',
                comm: '7',
                star: '9.9',
              ),
              DoctorsCard(
                img: AppImgaes.doctor,
                number: 7,
                name: 'LeBron Jamse',
                prof: 'Хирург',
                comm: '15',
                star: '9',
              ),
              DoctorsCard(
                  img: AppImgaes.abstact,
                  number: 8,
                  name: 'Chef Curre goat',
                  prof: 'Basket',
                  comm: '10',
                  star: '99')

              // DoctorsCard(img: AppImgaes.clipboard, prof: 'Кардиолог', number: 3, name: '', comm: '3',),
              // DoctorsCard(img: AppImgaes.clipboard, prof: 'Кардиолог', number: 3, name: 'Ichigo kurasaki', comm: '5',),
            ],

            // body: Container(
            //     child:
            //     ListView.builder(
            //       itemCount: numbers.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return DoctorsScreen();
            //       },
            //     )
          ),
        ),
      ),
    );
  }
}
