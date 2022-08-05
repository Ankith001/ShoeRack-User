
import 'package:flutter/material.dart';

class OrdersTabButtonWidget extends StatelessWidget {
   OrdersTabButtonWidget({
    Key? key, required this.buttonname, required this.ontap
  }) : super(key: key);

  String buttonname;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 60,
      child: TextButton(
        onPressed: () => ontap(),
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        style:    TextButton.styleFrom(
          primary: Colors.black,
          elevation: 2,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(side: BorderSide(),
            borderRadius: BorderRadius.circular(15),
          ),
        
        ),
      ),
    );
  }
}