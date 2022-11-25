import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:taskmanagementapp/app/utils/header.dart';
import 'package:taskmanagementapp/app/utils/style/AppColors.dart';
import 'package:taskmanagementapp/app/utils/widget/SideBar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: const SideBar(),
        backgroundColor: AppColors.primaryBg,
        body: Row(
          children: [
            !context.isPhone
            ? const Expanded(
                flex: 2,
                child: SideBar(),
            )
           : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
              !context.isPhone 
              ? const header()
              : Container(
              // content / isi page / screen
                padding: EdgeInsets.all(20), 
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _drawerKey.currentState!.openDrawer();
                    }, 
                    icon: Icon(
                      FontAwesomeIcons.bars,
                       color: AppColors.primaryText,
                       ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
            // mainAxisAlignment: MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Management',
                style: TextStyle(fontSize: 20, color: AppColors.primaryText),
                ),
              Text(
                'Manage by Lina Lestari',
                style: TextStyle(fontSize: 10, color: AppColors.primaryText),
                ),
            ],
          ),
          const Spacer(),
          const Icon(FontAwesomeIcons.bell,
          color: AppColors.primaryText,
          ),
          const SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
          child: CircleAvatar(
            backgroundColor: Colors.amber, 
            radius: 25,
            foregroundImage: NetworkImage(
              'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
              ),
              )
                    ],
                   ),
                 ),
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                    ? const EdgeInsets.all(50)
                    : const EdgeInsets.all(20),
                  margin:!context.isPhone
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: !context.isPhone
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text(
                        'My Task',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // my task
                      SizedBox(
                        height: 200,
                        child: ListView(
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.CardBg,
                                ),
                                margin: const EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(  
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: CircleAvatar(
                                        backgroundColor: Colors.amber, 
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                       
                                       ),
                                      ),
                                      ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                   ),
                                  ),
                                    const Spacer(),
                                    Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(
                                        child: Text(
                                          '100%',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                          )),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(child: Text(
                                        '10 / 10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                        )),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 Hari Lagi!!', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,
                                        ),
                                      ),
                                ]),      
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.CardBg,
                                ),
                                margin: const EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(
                                    
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: CircleAvatar(
                                        backgroundColor: Colors.amber, 
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                       
                                       ),
                                      ),
                                      ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                   ),
                                  ),
                                    const Spacer(),
                                    Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(
                                        child: Text(
                                          '100%',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                          )),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(child: Text(
                                        '10 / 10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                        )),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 Hari Lagi!!', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,
                                        ),
                                      ),
                                ]),  
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.CardBg,
                                ),
                                margin: const EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(
                                    
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: CircleAvatar(
                                        backgroundColor: Colors.amber, 
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                       
                                       ),
                                      ),
                                      ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                   ),
                                  ),
                                    const Spacer(),
                                    Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(
                                        child: Text(
                                          '100%',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                          )),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(child: Text(
                                        '10 / 10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                        )),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 Hari Lagi!!', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,
                                        ),
                                      ),
                                ]), 
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.CardBg,
                                ),
                                margin: const EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(
                                    
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: CircleAvatar(
                                        backgroundColor: Colors.amber, 
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                       
                                       ),
                                      ),
                                      ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                   ),
                                  ),
                                    const Spacer(),
                                    Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(
                                        child: Text(
                                          '100%',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                          )),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: Center(child: Text(
                                        '10 / 10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                        )),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 Hari Lagi!!', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,
                                        ),
                                      ),
                                ]),
                                
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Upcoming Task',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                                  height: 20,
                                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'My Friends',
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 30,
                                      ),
                                    ),
                                    const Text(
                                      'More',
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.arrowRight,
                                      color: AppColors.primaryText,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                                  height: 20,
                                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ) 
                )
              ]),
            )
          ],
        ),
        );
  }
}

