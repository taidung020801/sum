import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sum/static/static_function.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final String title = "Màn hình phép cộng 1";
  static const String content = "Đây là màn hình phép cộng 1";

  void _onClick() async {
    print(StaticFunction);
    if(StaticFunction.goRoot != null){
      StaticFunction.goRoot!();
    }else{
      Navigator.pop(context);
    }
  }

  Future<bool> _onWillPop() async {
    Navigator.pop(context);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    _onClick();
                  },
                  child: Text('Về lại trang gốc'),
                ),
              ],
            ),
          )// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}