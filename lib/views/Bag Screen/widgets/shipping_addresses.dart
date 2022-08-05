import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/add_shipping_address.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/address_card.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenShippingAddress extends StatelessWidget {
  const ScreenShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar:AppBarWidget(appbartitle: "Shipping Addresses"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            AddressCardWidget(
                ontap: () {},
                modifyname: "Edit",
                address: "Thrissur",
                personname: "Ankith"),
            kHeight10,
            AddressCardWidget(
                ontap: () {},
                modifyname: "Edit",
                address: "Calicut",
                personname: "Absam Thariq"),
            kHeight10,
            AddressCardWidget(
                ontap: () {},
                modifyname: "Edit",
                address: "Thrivandram",
                personname: "Al Ameen"),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(ScreenAddShippingAddress()),
        backgroundColor: kRedColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
