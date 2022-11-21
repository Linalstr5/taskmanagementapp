import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:taskmanagementapp/app/utils/widget/SideBar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Row(
          children: [
            const Expanded(
                flex: 2,
                child: SideBar(),
            ),
            Expanded(
              flex: 15,
              child: Column(children: [
                SizedBox(
                  height: Get.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
                    child: Row(children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Management',
                            style: TextStyle(fontSize: 20),
                            ),
                          Text(
                            'Manage by Lina Lestari',
                            style: TextStyle(fontSize: 15),
                            ),  
                        ],
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: 
                                  const EdgeInsets.only(left: 40, right: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: 'Search', 
                         ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(FontAwesomeIcons.bell),
                      const SizedBox(
                        width: 20,
                      ),
                     GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Sign Out',
                          content: 
                              Text('Are you sure for sign out?'),
                            cancel: ElevatedButton(
                              onPressed: () => Get.back(),
                              child: Text('Cancel'),  
                        ),
                        confirm: ElevatedButton(
                          onPressed: () => Get.toNamed(Routes.LOGIN),
                          child: Text('Sign Out'),
                        ),
                        );
                      },
                       child: Row(
                         children: [
                           const Text('Sign Out'),
                           const SizedBox(
                          width: 5,
                        ),
                        const Icon(FontAwesomeIcons.rightFromBracket),
                         ],
                       ),
                     ),
                    ]),
                  ),
                ),
              ]),
            )
          ],
        ));
  }
}
