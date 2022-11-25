import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmanagementapp/app/utils/header.dart';
import 'package:taskmanagementapp/app/utils/style/AppColors.dart';
import 'package:taskmanagementapp/app/utils/widget/SideBar.dart';import 'package:flutter/material.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
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
          ClipRRect(borderRadius: BorderRadius.circular(30),
          child: CircleAvatar(backgroundColor: Colors.amber, radius: 25,foregroundImage: NetworkImage('https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),),)
                    ],
                   ),
                 ),
                 // content / isi page / screen
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(50),
                    margin:!context.isPhone
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(30),
                    ),
                  ) 
                )
              ]),
            )
          ],
        ));
  }
}
