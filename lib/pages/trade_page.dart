import 'package:flutter/material.dart';

class TradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("这是交易页"),
      ),
      body: Center(
        child: Text("交易内容"),
      ),
    );
  }
}
