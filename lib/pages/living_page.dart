import 'package:flutter/material.dart';

class LivingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 更改主题颜色demo

    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        title: Text("这是直播页",style: TextStyle(color: Theme.of(context).highlightColor),),
      ),
      body: Theme(
        data: Theme.of(context).copyWith (
          highlightColor: Colors.red,
        ),
        child: Text("ahahaha嘻嘻嘻", style: TextStyle(color: Theme.of(context).highlightColor),),
      ),
    );
  }
}
