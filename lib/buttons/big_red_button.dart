import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';

class BigRedButtonWidget extends StatelessWidget {
   BigRedButtonWidget({
    Key? key,required this.buttonname,required this.bold
  }) : super(key: key);
  String buttonname;
  FontWeight bold;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextButton(
        onPressed: () {},
        child:  Text(buttonname,
            style: TextStyle(fontWeight: bold)),
        style: TextButton.styleFrom(
          primary: Colors.white,
          elevation: 5,
          backgroundColor: kRedColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}