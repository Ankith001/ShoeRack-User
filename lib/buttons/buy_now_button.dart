import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';

class BuyNowButtonWidget extends StatelessWidget {
   BuyNowButtonWidget({
    Key? key,
    required this.size,required this.buttonname , required this.ontap
  }) : super(key: key);

  final Size size;
  String buttonname;
  VoidCallback ontap;
  
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.45 ,
      height: 40,
      child: TextButton(
        onPressed: () => ontap(),
        child:  Text(buttonname,
            style: TextStyle(fontWeight: FontWeight.normal)),
        style: TextButton.styleFrom(
          primary: Colors.white,
          elevation: 5,
          backgroundColor: kRedColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}