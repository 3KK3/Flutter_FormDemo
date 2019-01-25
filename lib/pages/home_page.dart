import 'package:flutter/material.dart';
import '../TextFieldDemo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是首页"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white70,
        child: TextFieldDemo(),
      ),
    );
  }
}

// 输入框demo



