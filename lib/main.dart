import 'package:flutter/material.dart';
import 'BottomBarDemo.dart';
import 'pages/living_page.dart';
import 'pages/my_page.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 定义默认最初路由
      initialRoute: "/about",
      // 定义路由 对应的页面
      routes: {
        '/': (context) => BottomTabBar(),
        '/about' : (context) => LivingPage(),
        '/Form' : (context) => MyPage(),
      },

      theme: ThemeData(
        primarySwatch: Colors.green,
        highlightColor: Colors.blue,
        splashColor: Colors.red,
      ),

      title: "这是一个标题",
    );
  }
}

