import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../core/images/images.dart';
import '../screens/home_screens/bottom_navigation.dart';

// class TestTabbar extends StatefulWidget {
//   const TestTabbar({super.key});

//   @override
//   State<TestTabbar> createState() => _TestTabbarState();
// }

// class _TestTabbarState extends State<TestTabbar> {
//   with SingleTickerProviderStateMixin{
//   late TabController tabController;

//   @override

//   void initState() {
//  tabController = TabController(length: 3, vsync: this);
//   super.initState();
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('404')),
//       ),
//       body: Column(children: const [
//         TabBar(
//           controller: tabController ,
//           tabs: [
//             Tab(
//               text: 'page1',
//             ),
//             Tab(
//               text: 'page2',
//             ),
//             Tab(
//               text: 'page3',
//             ),
//           ],
//         )
//       ]),
//     );
//   }
// }
// }

class TestTabbar extends StatefulWidget {
  const TestTabbar({super.key});

  @override
  State<TestTabbar> createState() => _TestTabbarState();
}

class _TestTabbarState extends State<TestTabbar> {
  File? _image;

  int _selctedIndex = 0;

  Future _pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    File? img = File(image.path);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomNavigationBar(

        //   currentIndex: _selctedIndex,
        //   unselectedItemColor: AppColors.lightGrey,
        //   selectedItemColor: AppColors.blue,
        //   showUnselectedLabels: true,
        //   selectedLabelStyle: AppFonts.w500s10.copyWith(color: AppColors.blue),
        //   unselectedLabelStyle:
        //       AppFonts.w500s10.copyWith(color: AppColors.lightGrey),
        //   items: [
            
        //     BottomNavigationBarItem(

        //         icon: Image.asset(
        //           AppImgaes.plusUser,
        //           width: 28,
        //           height: 28,
        //         ),
        //         label: 'Доктора'),
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           AppImgaes.abstact,
        //           width: 28,
        //           height: 28,
        //         ),
        //         label: 'Статьи'),
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           AppImgaes.favorite,
        //           width: 28,
        //           height: 28,
        //         ),
        //         label: 'Мои доктора'),
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           AppImgaes.user,
        //           width: 28,
        //           height: 28,
        //         ),
        //         label: 'Профиль'),
        //   ],
        // ),
        // bottomNavigationBar: BottomAppBar(shape: CircularNotchedRectangle(),
        // notchMargin: 10,
        // child: Container(height: 50,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget> [
        //     Row(crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         MaterialButton(onPressed: (){
        //           setState(() {

        //           });
        //         }),

        //       ],)
        //   ],), ),
        // ),
        // floatingActionButton: SizedBox(
        //   height: 64,
        //   width: 64,
        //   child: ElevatedButton(
        //     style: ButtonStyle(
        //       shape: MaterialStateProperty.all(
        //         RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //       ),
        //     ),
        //     onPressed: () {},
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Image.asset(AppImgaes.car),
        //         Text(
        //           'Вызов',
        //           style: AppFonts.w500s10.copyWith(color: AppColors.white),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: AppColors.white,
          title: const Text(
            'Мой профиль',
            style: AppFonts.w700s34,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        body: Column(children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.lightBlue,
                radius: 50,
                child: _image == null
                    ? const Text('AA')
                    : CircleAvatar(
                        radius: 50,
                        backgroundImage: FileImage(
                          _image!,
                        ),
                      ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    _pickImage(ImageSource.camera);
                  },
                  child: const CircleAvatar(
                    radius: 16,
                    child: Icon(
                      Icons.camera_alt,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Будешов Тилек',
            style: AppFonts.w500s22,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            '+996 705 32 10 65',
            style: AppFonts.w400s18,
          ),
          SizedBox(height: 15,),
          // Container(width: 200,height: 200,color: Colors.blue,),
          TabBar(
            labelColor: Colors.blue,
              // indicatorColor: Colors.orange,
              tabs: [
                Tab(
                  text: 'Анализы',
                  
                ),
                Tab(
                  text: 'Диагнозы',
                ),
                Tab(
                  text: 'Рекомендации',
                ),
              ]),
          Expanded(
            child: TabBarView(children: [
              PageDoc(
                  images: AppImgaes.clipboard,
                  title: 'У вас пока нет добавленных результатов \n анализов'),
              PageDoc(
                images: AppImgaes.file,
                title: 'У вас пока нет добавленных диагнозов',
              ),
              PageDoc(
                images: AppImgaes.list,
                title: 'У вас пока нет добавленных диагнозов',
              ),
            ]),
          ),

          //    BottomNavigationBar(

          //   currentIndex: _selctedIndex,
          //   unselectedItemColor: AppColors.lightGrey,
          //   selectedItemColor: AppColors.blue,
          //   showUnselectedLabels: true,
          //   selectedLabelStyle: AppFonts.w500s10.copyWith(color: AppColors.blue),
          //   unselectedLabelStyle:
          //       AppFonts.w500s10.copyWith(color: AppColors.lightGrey),
          //   items: [
          //     BottomNavigationBarItem(
          //         icon: Image.asset(
          //           AppImgaes.plusUser,
          //           width: 28,
          //           height: 28,

          //         ),
          //         label: 'Доктора'),
          //     BottomNavigationBarItem(
          //         icon: Image.asset(
          //           AppImgaes.abstact,
          //           width: 28,
          //           height: 28,

          //         ),
          //         label: 'Статьи'),
          //     BottomNavigationBarItem(
          //         icon: Image.asset(
          //           AppImgaes.favorite,
          //           width: 28,
          //           height: 28,

          //         ),
          //         label: 'Мои доктора'),

          //     BottomNavigationBarItem(
          //         icon: Image.asset(
          //           AppImgaes.user,
          //           width: 28,
          //           height: 28,

          //         ),
          //         label: 'Профиль'),
          //   ],
          // ),
        ]),
      ),
    );
  }
}

class PageDoc extends StatelessWidget {
  const PageDoc({
    Key? key,
    required this.images, 
    required this.title,
  }) : super(key: key);
  final String images;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      // width: 100,
      // color: Colors.orange,
      // child: Center(child: Text('11'))
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 135),
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 102),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Image.asset(
                        images,
                        width: 105,
                        height: 105,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            title,
            style: AppFonts.w500s15.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 33,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImgaes.book,
                width: 18,
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Добавить документ',
                    textAlign: TextAlign.center,
                    style:
                        AppFonts.w500s15.copyWith(color: AppColors.blueButton),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
