import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/pages/post/datail_page.dart';
import 'package:get/get.dart';

import '../../components/customTextArea.dart';
import '../../components/custom_elevated_button.dart';
import '../../util/validator_util.dart';
import 'home_page.dart';

class UpdatePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("글 수정하기"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                hint: "제목",
                funValidator: validateTitle(),
                value: "제목1",
              ),
              CustomTextArea(
                hint: "내용",
                funValidator: validateContent(),
                value: "내용" * 500,
              ),
              CustomElevatedButton(
                  text: "완료",
                  pageRoute: () {
                    if (_formKey.currentState!.validate()) {
                      Get.back();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
