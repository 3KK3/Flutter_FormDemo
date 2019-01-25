import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/living_page.dart';
import 'pages/my_page.dart';
import 'pages/trade_page.dart';

class BottomTabBar extends StatefulWidget {

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {

  List<Widget> _list = List();
  int _currentIndex = 0;

  @override
  void initState() {
    _list
      ..add(HomePage())
      ..add(TradePage())
      ..add(LivingPage())
      ..add(MyPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });

        },

        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            title: Text("首页",style: TextStyle(color: Theme.of(context).primaryColor),),
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),

          BottomNavigationBarItem(
            title: Text("交易",style: TextStyle(color: Colors.black),),
            icon: Icon(
              Icons.train,
              color: Colors.blue,
            ),
          ),

          BottomNavigationBarItem(
            title: Text("直播",style: TextStyle(color: Colors.black),),
            icon: Icon(
              Icons.live_tv,
              color: Colors.blue,
            ),
          ),

          BottomNavigationBarItem(
            title: Text("我的",style: TextStyle(color: Colors.black),),
            icon: Icon(
              Icons.my_location,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
