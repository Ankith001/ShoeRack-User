import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/screen_personal_info.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appbartitle: "Settings"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children:  [
              ListTile(
                onTap: () => Get.to(ScreenPersonalInfo()),
                title: Text("Personal Information"),
                subtitle: Text("Name, Date of Birth"),
              ),
              ListTile(
                title: Text("Password"),
                subtitle: Text("Password Settings"),
              ),
              ListTile(
                title: Text("Privacy Policy"),
              ),
              ListTile(
                title: Text("About"),
              ),
            ],
          ),
          const Center(
            child: Text(
              "Version 1.0",
              style: TextStyle(color: Color.fromARGB(255, 111, 110, 110)),
            ),
          ),
          kHeight5,
        ],
      ),
    );
  }
}
