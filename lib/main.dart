import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  )
  runApp(
    GetMaterialApp(
      stream: Firebase.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator());
        }
      return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes,
    );
      }
  ));
}
