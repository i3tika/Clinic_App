import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../testFile/tabbartest.dart';

class DcorotrProfil extends StatefulWidget {
  const DcorotrProfil({super.key});

  @override
  State<DcorotrProfil> createState() => _DcorotrProfilState();
}

class _DcorotrProfilState extends State<DcorotrProfil> {
  TextEditingController controllerCommit = TextEditingController();
  double rating = 0;
  //DefaultTabController tabController = DefaultTabController(length: 3, )

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: AppColors.white,
                title: Center(
                  child: Text(
                    '    Чынгыз Акылбеков',
                    style: AppFonts.w500s22,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    color: AppColors.black,
                  ),
                ]),
            body: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 29),
                    child: CircleAvatar(
                      radius: 56,
                      backgroundImage: AssetImage(AppImgaes.doctor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Чынгыз Акылбеков',
                  style: AppFonts.w500s22,
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Кордиолог',
                  style: AppFonts.w400s18,
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      minRating: 1,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: AppColors.oreng,
                      ),
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      '${rating}',
                      style: AppFonts.w400s18,
                    ),
                  ],
                ),
                const TabBar(
                    labelColor: Colors.blue,
                    // indicatorColor: Colors.orange,
                    labelStyle: AppFonts.w500s14,
                    tabs: [
                      Tab(
                        text: 'О докторе',
                        icon: Icon(Icons.contact_page),
                      ),
                      Tab(
                        text: 'Контакты',
                        icon: Icon(Icons.location_history),
                      ),
                      Tab(
                        text: 'Отзывы',
                        icon: Icon(Icons.comment),
                      ),
                    ]),
                SizedBox(
                  height: 8,
                ),

                Expanded(
                    child: TabBarView(
                  children: [
                    Tab(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 19),
                              child: Text(
                                'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. В частности, занимается вопросами нарушения сердечного ритма, врожденными пороками сердца, так называемыми синкопальными состояниями (проще говоря – обмороками).\n Для подбора эффективного лечения врач оценивает жизненно важные функции, анализирует информацию о принимаемых ребенком лекарствах и перенесенных заболеваниях, назначает необходимые исследования нервной системы. Возможно получение медицинской помощи без взимания платы при очном обращении в объемах, предусмотренных стандартами обязательного медицинского страхования (ОМС).',
                                style: AppFonts.w400s18,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    width: double.infinity,
                                    height: 90,
                                    decoration: const BoxDecoration(
                                        color: AppColors.whitefild,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1,
                                            spreadRadius: 1,
                                          )
                                        ]),
                                  ),
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: AppButton(
                                        title: 'Записаться на прием',
                                        onPressed: () {}),
                                  )),
                                ])
                              ],
                            )
                          ],
                        ),
                      ),

                      //left: 16, right: 19
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 19,
                                ),
                                child: Icon(Icons.phone),
                              ),
                              SizedBox(
                                width: 22.19,
                              ),
                              Text(
                                '+996 555 89 39 54 \n+996 771 29 55 22',
                                style: AppFonts.w400s18,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              // Container(
                              //   width: 359,
                              //   color: AppColors.greyContainer,
                              // )
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 359,
                                height: 2,
                                color: AppColors.greyContainer,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 19,
                                ),
                                child: Icon(Icons.location_history),
                              ),
                              SizedBox(
                                width: 22.19,
                              ),
                              Text(
                                'г. Бишкек, ул. Московская, 224,\n клиника “Медикал Нео”',
                                style: AppFonts.w400s18,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 359,
                                height: 2,
                                color: AppColors.greyContainer,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 19,
                                ),
                                child: Icon(Icons.email),
                              ),
                              SizedBox(
                                width: 22.19,
                              ),
                              Text(
                                'akylbekov.ch@example.com”',
                                style: AppFonts.w400s18,
                              ),
                              SizedBox(
                                height: 9,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 109.90,
                          ),
                          Stack(children: [
                            Container(
                              width: double.infinity,
                              height: 90,
                              decoration: const BoxDecoration(
                                  color: AppColors.whitefild,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    )
                                  ]),
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: AppButton(
                                  title: 'Записаться на прием',
                                  onPressed: () {}),
                            )),
                          ])
                        ],
                      ),
                    ),
                    Tab(
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Image.asset(
                                  AppImgaes.ellipsOne,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Text(
                                'Айзан Алишерова',
                                style: AppFonts.w600s18,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(
                              left: 69,
                            ),
                            child: Text(
                              'Попала к Чынгызу Маратовичу, когда практически не могла ходить - было защемление седалищного нерва. До этого обследовалась и у других специалистов, но лечение у Чынгыза Маратовича, его поддержка и четкие наставления дали хороший эффект. В лечение входили и таблетки, и уколы, витамины и гимнастика (даже через боль ее рекомендовали делать). Спустя 3 месяца лечения боль стала отступать. Пишу отзыв спустя 2 года - сейчас все хорошо! Никогда не забуду участие и профессионализм доктора. Огромное спасибо вам!',
                              style: AppFonts.w400s15,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(left: 69),
                                child: Text(
                                  '15 июня 2020',
                                  style: AppFonts.w400s13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Image.asset(
                                  AppImgaes.ellipsTwo,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Text(
                                'Умар Маратович Асылбеков',
                                style: AppFonts.w600s18,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(
                              left: 69,
                            ),
                            child: Text(
                              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.🎇🎇 В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
                              style: AppFonts.w400s15,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(left: 69),
                                child: Text(
                                  '15 июня 2020',
                                  style: AppFonts.w400s13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Image.asset(
                                  AppImgaes.ellipsThree,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Text(
                                'Елена Ким',
                                style: AppFonts.w600s18,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(
                              left: 69,
                            ),
                            child: Text(
                              'Спасибо большое Чынгызу Маратовичу за высокий профессионализм , к моим жалобам отнесся с очень глубоким вниманием, назначил важные обследования и выписал нужные лекарства. Сейчас чувствую себя прекрасно. Ещё раз спасибо !❤🧡💜',
                              style: AppFonts.w400s15,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(left: 69),
                                child: Text(
                                  '31 мая 2020',
                                  style: AppFonts.w400s13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Image.asset(
                                  AppImgaes.ellipsThree,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Text(
                                'Будешов Тилек',
                                style: AppFonts.w600s18,
                              ),
                            ],
                          ),
                           Padding(
                            padding: const EdgeInsets.only(
                              left: 69,
                            ),
                            child: Text(
                              
                              controllerCommit.text,
                              style: AppFonts.w400s15,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // Text(controllerCommit.text),
                          Row(
                            children: const [
                              Padding(
                                padding: const EdgeInsets.only(left: 69),
                                child: Text(
                                  '31 мая 2020',
                                  style: AppFonts.w400s13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 54,
                          ),
                          //

                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.whitefild,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                  )
                                ]),
                            width: double.infinity,
                            height: 57,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 9, left: 17, top: 8, right: 15),
                              child: TextField(
                                controller: controllerCommit,
                                decoration: InputDecoration(
                                  icon: InkWell(
                                      onTap: (() {
                                        setState(() {
                                          print(controllerCommit.text);
                                        });
                                      }),
                                      child: Icon(Icons.mail)),
                                  labelText: 'Ваш отзыв',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                  ),
                                ),
                              ),
                            ),
                          )
                          //
                        ]),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
