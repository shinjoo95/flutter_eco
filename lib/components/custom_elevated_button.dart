import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login.dart';



class CustomElevatedButton extends StatelessWidget {
 final String text;
 final pageRoute;

 CustomElevatedButton({required this.text, required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton( style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        )
    ),
      onPressed: pageRoute, child: Text("$text"),
    );
  }
}