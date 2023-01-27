import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ArticleScreens extends StatelessWidget {
  const ArticleScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 33, right: 225),
              child: Text(
                'Статьи',
                style: AppFonts.w700s34.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ArticleWidget(
                title: 'Приводит ли использование\nнаушников к потере слуха?',
                images: AppImgaes.im1,
                intheight: 85,
                intwidth: 335,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ArticleWidget(
              images: AppImgaes.im2,
              title: 'Откуда берется аллергия?',
              intwidth: 335,
              intheight: 85,
            ),
            const SizedBox(
              height: 8,
            ),
            // ArticleWidget(images: AppImgaes.im4, title: 'Бег — худший способ\nпохудеть', intwidth:335 , intheight: 85)
            // Container(
            //   width: 335,
            //   height: 87,
            //   decoration: BoxDecoration(
            //       color: AppColors.whitefild,
            //       borderRadius: BorderRadius.circular(4)),
            //   child: Row(
            //     children: [
            //       Column(
            //         children:  [
            //           Text(
            //             '5 способов повысить\nконцентрацию',
            //             style: AppFonts.w500s17,
            //           ),
            //           Text('12 июня 2020'),
            //           Image.asset(AppImgaes.im3,width: 56,height: 56,)
            //         ],
            //       ),
            //     ],
            //   ),
            // )
            // ArticleWidget(images: AppImgaes.im5, title: 'Боли в спине: исчерпывающее\n руководство по новым\n методам лечения')
        
            ArtWidgeet(
              images: AppImgaes.im4,
              title: 'Бег — худший способ похудеть',
            ),
            const SizedBox(
              height: 8,
            ),
                Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 107,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Боли в спине: исчерпывающее\nруководство по новым методам\nлечения',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17, textAlign: TextAlign.start,
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 15),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.5,
                    ),
                    Image.asset(
                      AppImgaes.im5,
                      //AppImgaes.im4,
                      width: 56,
                      height: 56,
                    ),
                  ],
                )),
                const SizedBox(height: 8,),
                Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 87,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 9.5
                          ),
                          child: Text(
                            '5 способов повысить \nконцентрацию',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17,
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 10),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      AppImgaes.im3,
                      //AppImgaes.im4,
                      width: 56,
                      height: 56,
                    ),
                  ],
                )),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 107,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Почему не стоит заниматься\nфизической активностью,\nчтобы сбросить вес',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17, textAlign: TextAlign.start,
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 15),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      AppImgaes.im6,
                      //AppImgaes.im4,
                      width: 56,
                      height: 56,
                    ),
                  ],
                )),
                const SizedBox(height: 8,),
                Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 107,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5
                          ),
                          child: Text(
                            'Почему не стоит заниматься\nфизической активностью,\nчтобы сбросить вес',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 10),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                   Image.asset(
                        AppImgaes.im7,
                        //AppImgaes.im4,
                        width: 56,
                        height: 56,
                      ),
                  
                  ],
                )),
                const
                SizedBox(height: 8,),
                Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 107,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Боли в спине: исчерпывающее\nруководство по новым методам\nлечения',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17, textAlign: TextAlign.start,
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 15),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.5,
                    ),
                    Image.asset(
                      AppImgaes.im5,
                      //AppImgaes.im4,
                      width: 56,
                      height: 56,
                    ),
                  ],
                )),
                const SizedBox(height: 8,),
                Container(
                decoration: BoxDecoration(
                    color: AppColors.whitefild,
                    borderRadius: BorderRadius.circular(4)),
                width: 335,
                height: 107,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Боли в спине: исчерпывающее\nруководство по новым методам\nлечения',
                            //'Бег — худший способ похудеть',
                            style: AppFonts.w500s17, textAlign: TextAlign.start,
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 15),
                          child: Text(
                            '12 июня 2020',
                            style: AppFonts.w300s15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.5,
                    ),
                    Image.asset(
                      AppImgaes.im5,
                      //AppImgaes.im4,
                      width: 56,
                      height: 56,
                    ),
                  ],
                )),
                SizedBox(height: 8,),
            ]),
        ),
      ),
    );
  }
}

class ArtWidgeet extends StatelessWidget {
  const ArtWidgeet({
    Key? key,
    required this.images,
    required this.title,
  }) : super(key: key);
  final String images;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.whitefild, borderRadius: BorderRadius.circular(4)),
        width: 335,
        height: 76,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    title,
                    //'Бег — худший способ похудеть',
                    style: AppFonts.w500s17,
                  ),
                ),
                // SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 15),
                  child: Text(
                    '12 июня 2020',
                    style: AppFonts.w300s15,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              images,
              //AppImgaes.im4,
              width: 56,
              height: 56,
            ),
          ],
        ));
  }
}

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    Key? key,
    required this.images,
    required this.title,
    required this.intwidth,
    required this.intheight,
  }) : super(key: key);
  final String images;
  final String title;
  final double intwidth;
  final double intheight;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.whitefild, borderRadius: BorderRadius.circular(4)),
        width: intwidth,
        //335,
        height: intheight,
        // 87,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    title,
                    style: AppFonts.w500s17,
                  ),
                ),
                // SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 5),
                  child: Text(
                    '12 июня 2020',
                    style: AppFonts.w300s15,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Image.asset(
              images,
              width: 56,
              height: 56,
            ),
          ],
        ));
  }
}
