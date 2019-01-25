import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是我的页"),
      ),
      body: InputDemo(),
    );
  }
}

// 注册demo

// 自动校验

// 自动校验初始值不校验

// 点击按钮得到输入值

// 出现toast提示

class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {

  bool validate = false;

  final registerFormKey = GlobalKey<FormState>();
  String name, pw;

  void submitFormFuc() {

    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      print("账号是$name, 密码是$pw");
      Scaffold.of(context).showSnackBar(
        SnackBar(content: SizedBox(
          child: Center(child: Text("正在登录..."),),
          width: 100,
          height: 50,


        )),
      );
    } else {
      setState(() {
        validate = true;
      });
    }
  }

  String validatorNameFunc(value) {
    if (value.isEmpty) {
      return "账号不能为空";
    }
    return null;// 代表验证通过
  }

  String validatorPWFunc(value) {
    if (value.isEmpty) {
      return "密码不能为空";
    }
    return null;// 代表验证通过
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[

          TextFormField(
            onSaved: (value) {
              name = value;
            },

            autovalidate: validate,

            validator: validatorNameFunc,

            decoration: InputDecoration(
              labelText: "账号",
            ),
          ),

          TextFormField(
            onSaved: (value) {
              pw = value;
            },

            validator: validatorPWFunc,
            decoration: InputDecoration(
              labelText: "密码",
            ),
          ),

          Container(
            child: RaisedButton(
              child: Text("提交"),
              onPressed: submitFormFuc,

            ),
          ),
        ],
      ),
    );
  }
}

