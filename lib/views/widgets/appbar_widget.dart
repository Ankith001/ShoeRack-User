import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({Key? key, required this.appbartitle,this.tBool=true}) : super(key: key);

  String appbartitle;
  bool tBool;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: tBool,
      title: Text(
        appbartitle,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  static final _appBar = AppBar();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => _appBar.preferredSize;
}
