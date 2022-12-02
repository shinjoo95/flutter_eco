import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/post/update_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    // String data = Get.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("내용"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "글제목",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Divider(),
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Get.off(HomePage());       // 상태관리로 갱신 시킬 수 있음
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("삭제")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(UpdatePage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("수정")),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Text("글내용" * 500),
              ))
            ],
          ),
        ));
  }
}
