
import 'package:ecommerce/views/Bag%20Screen/widgets/shipping_addresses.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/profile_name_card.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/screen_myorder.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/screen_settings.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        appbartitle: "My Profile",
      ),
      body: Column(
        children: [
          ProfileNameCardWidget(),
          ListTile(
            title: Text("My Orders"),
            subtitle: Text("12 Orders"),
            trailing: IconButton(
                onPressed: () => Get.to(ScreenMyOrders()), icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          ListTile(
            title: Text("Shipping Addresses"),
            subtitle: Text("3 Addresses"),
            trailing: IconButton(
                onPressed: () => Get.to(ScreenShippingAddress()), icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          ListTile(
            title: Text("Payment Methods"),
            subtitle: Text("PayPal, PhonePe"),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          ListTile(
            title: Text("My Coupons"),
            subtitle: Text("You have 3"),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
         
          ListTile(
            title: Text("Support"),
            subtitle: Text("Help, Customer Care"),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          ListTile(
            title: Text("Settings"),
            subtitle: Text("Privacy, Password"),
            trailing: IconButton(
                onPressed: () => Get.to(SettingsScreen()), icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ],
      ),
    );
  }
}
