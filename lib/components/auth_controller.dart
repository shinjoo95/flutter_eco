import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/user/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth authentication = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(authentication.currentUser);
    _user.bindStream(authentication.userChanges()); //유저의 모든 행동을 stream
    ever(_user, (callback) => _moveToPage);
  }

  _moveToPage(User? user) {
    if (user == null) {
      Get.offAll(() => loginPage());
    } else {
      Get.offAll(() => HomePage());
    }
  }

  void register(String email, password) async {
    try {
      await authentication.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("Error message", "User message",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "다시 입력하세요.",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(e.toString()));
    }
  }
}
