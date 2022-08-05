import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/address_card.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/payment_card.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/shipping_addresses.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenCheckOut extends StatelessWidget {
  const ScreenCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appbartitle: "Check Out"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                const Text(
                  "Shipping address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                kHeight5,
                AddressCardWidget(
                  ontap: () => Get.to(ScreenShippingAddress()),
                    modifyname: "Change",
                    address: "Pangil H\nKaiparambu P.O",
                    personname: "Ankith"),
                kHeight20,
                const PaymentCardWidget(), 
              ],
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Order :"), Text("1299")],
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Delivery :"), Text("40")],
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Summary :"), Text("1339")],
                  ),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: TextButton(
                        onPressed: () => Get.to(ScreenCheckOut()),
                        child: const Text("SUBMIT ORDER", style: TextStyle()),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5,
                          backgroundColor: kRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  kHeight10,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
