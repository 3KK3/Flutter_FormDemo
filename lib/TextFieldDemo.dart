import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEditingController.addListener(
            (){
          print(textEditingController.text);
        }
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return TextField(
//      onChanged: (inputStr) {
//        print(inputStr);
//      },

      onTap: (){
        print("开始点击");
      },

      onSubmitted: (value){
        print("提交 $value");
      },

      decoration: InputDecoration(
        icon: Icon(Icons.input),
        labelText: "输入姓名",
        hintText: "hint text",
        fillColor: Colors.green,

      ),
    );
  }

}
