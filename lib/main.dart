import 'package:flutter/material.dart';
import 'package:flutter_blog/components/auth_controller.dart';
import 'package:flutter_blog/login1.dart';
import 'package:flutter_blog/pages/user/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();    //비동기 방식으로 사용되는 메서드
  Firebase.initializeApp().then((value)=> Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
