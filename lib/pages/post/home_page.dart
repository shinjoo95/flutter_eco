import 'package:flutter/material.dart';
import 'package:flutter_blog/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("쓰레기 일지"), backgroundColor: Colors.green),
      drawer: _navigation(context),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){},
              title: Text("제목 1"),
            );
          }),
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
                  onPressed: () {},
                  child: Text(
                    "회원정보보기",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
              TextButton(
                  onPressed: () {},
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
