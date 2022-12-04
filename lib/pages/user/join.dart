import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/pages/user/login.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

import '../../components/custom_text_form_field.dart';

class joinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "회원가입",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          //center 정렬이 안먹힘
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "youthmungan_eco",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            _joinForm()
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      //데이터를 한번에 넘기기 위해 , 유효성 검사를 한꺼번에 하기 위해
      child: Column(
        children: [
          CustomTextFormField(hint: "이메일", funValidator: validateEmail(),
          ),
          CustomTextFormField(hint: "비밀번호", funValidator: validatePassword(),),
          CustomTextFormField(hint: "ex)950929", funValidator: validateBirth()),
          CustomTextFormField(hint: "010xxxxxxxx", funValidator: validateNumber()),
          SizedBox(
            height: 20,
          ),
          CustomElevatedButton(text: "회원가입 완료",
              pageRoute: () {
            if(_formKey.currentState!.validate()){
            Get.to(loginPage());
            }
          }
          ),
        ],
      ),
    );
  }
}
