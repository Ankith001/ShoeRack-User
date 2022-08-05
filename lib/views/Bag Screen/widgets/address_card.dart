import 'package:ecommerce/buttons/modify_button_widget.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/shipping_addresses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressCardWidget extends StatelessWidget {
   AddressCardWidget({
    Key? key,required this.modifyname,required this.address,required this.personname,required this.ontap 
  }) : super(key: key);

  String modifyname;
  String personname;
  String address; 
  VoidCallback ontap;
  

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
                      personname,
                      style: TextStyle(fontSize: 17),
                    ),
                    kHeight10,
                    Text(address)
                  ],
                ),
                // Text("Change",style: TextStyle(color: kRedColor,fontWeight: FontWeight.bold),),
                ModifyButtonWidget(modifyname: modifyname, ontap: () => ontap())
              ],
            ),
          ),
        ],
      ),
    );
  }
}