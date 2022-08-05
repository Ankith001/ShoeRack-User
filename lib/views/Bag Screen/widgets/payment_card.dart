import 'package:ecommerce/buttons/modify_button_widget.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 233, 232, 232)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
    horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment ",
          style: TextStyle(fontSize: 17),
        ),
        kHeight10,
        Text("Cash On Delivery")
      ],
    ),
    // Text("Change",style: TextStyle(color: kRedColor,fontWeight: FontWeight.bold),),
    ModifyButtonWidget(modifyname: "Change", ontap: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}