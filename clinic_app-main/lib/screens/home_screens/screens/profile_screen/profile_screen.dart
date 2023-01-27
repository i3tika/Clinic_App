import 'dart:io';

import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
late TabController controller;
class _ProfileScreenState extends State<ProfileScreen> {
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              Column(
                children: [
                  // DefaultTabController(
                    
                  //   initialIndex: 0,
                  //   length: 3,
                  //   child: 
                    TabBar(
                      // indicator: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50), // Creates border
                      // color: AppColors.blue), //Change background color from here
                      labelStyle: AppFonts.w500s15,
                      tabs: const [
                        Tab(
                          icon: Icon(Icons.home,color: AppColors.black,),
                          text: '1',
                        ),
                        Tab(
                          icon: Icon(Icons.directions_car,color: AppColors.black),
                          text: '2',
                        ),
                        Tab(
                          icon: Icon(Icons.phone,color: AppColors.black),
                          text: '3',
                        ),
                      ],
                    ),
                  //),
    
            //       Expanded(
            //   child:
            //    TabBarView(
            //     children: [
            //     Container(height: 200,width: 100, child: Center(child: Text('11'))
            //     ),
            //     Container(height: 200,child: Center(child: Text('22'))
            //     ),
            //     Container(height: 200,child: Center(child: Text('33'))
            //     ),
            //     ]),
            // )
            //   Expanded(
            // child:
             TabBarView(
              children: [
              Container(child: Text('11')
              ),
              Container(child: Text('22')
              ),
              Container(child: Text('33')
              ),
              ]
              //),
          ),
                  
                ],
              ),
              // TabBarView(
              // children: [
              //   Icon(Icons.directions_car),
              //   Icon(Icons.directions_transit),
              //   Icon(Icons.directions_bike),
    
              // ],
              // ),
    
            ],
          ),
        ),
      ),
    );
  }

  // void changeIndex(int index) {
  //   if (_selctedIndex != index) {
  //     _selctedIndex = index;

  //     setState(() {});
  //   }
  // }
}
