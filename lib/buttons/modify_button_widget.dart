import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/shipping_addresses.dart';
import 'package:flutter/material.dart';

class ModifyButtonWidget extends StatelessWidget {
   ModifyButtonWidget({
    Key? key, required this.modifyname,required this.ontap
  }) : super(key: key);

  String modifyname;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 ,
      width: 70,
      child: TextButton(
        
        onPressed: () => ontap() ,
        child: Text(
          modifyname,
          style: TextStyle(
              color: kRedColor, fontSize: 10,fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
          primary: kRedColor,
          elevation: 2,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: kRedColor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}