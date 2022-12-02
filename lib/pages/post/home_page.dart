import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/datail_page.dart';
import 'package:flutter_blog/pages/post/write_page.dart';
import 'package:flutter_blog/pages/user/user_info.dart';
import 'package:flutter_blog/size.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../user/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("쓰레기 일지"), backgroundColor: Colors.green),
      drawer: _navigation(context),
      body:
      ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Get.to(DetailPage(index), arguments: "arguments 속성 테스트");
            },
            title: Text("제목1"),
            leading: Text("1"),
          );
      },
          separatorBuilder: (context, index) {
            return Divider();
          },),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){
          Get.to(WritePage());
        } , child: Icon(Icons.add,),
      ) ,
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.lightGreen,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(UserInfo());
                  },
                  child: Text(
                    "회원정보보기",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
              TextButton(
                  onPressed: () {
                    Get.off(loginPage());
                  },
                  child: Text(
                    "로그아웃",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
