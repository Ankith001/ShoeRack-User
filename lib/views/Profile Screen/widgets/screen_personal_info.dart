import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/add_shipping_address.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ScreenPersonalInfo extends StatelessWidget {
  const ScreenPersonalInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appbartitle: "Personal Information"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormShippingAddWidget(formname: "Name"),
            TextFormShippingAddWidget(formname: "Date of Birth"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Password"),
                TextButton(onPressed: (){}, child: Text("Change"))
              ],
            ),
            kHeight5,
            TextFormShippingAddWidget(formname: "Password",)
          ],
        ),
      ),
    );
  }
}