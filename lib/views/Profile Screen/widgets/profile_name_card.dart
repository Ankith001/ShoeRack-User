import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Login%20Screen/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileNameCardWidget extends StatelessWidget {
  const ProfileNameCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey), 
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kWidth5, 
                const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        const AssetImage("lib/assets/AnkithPic.jpg")),
                kWidth10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Ankith",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("ankithjp0@gmail.com")
                  ],
                ),
                                    ],
            ),
            IconButton(
                onPressed: () => Get.to(LoginScreen()), icon: const Icon(Icons.logout_outlined))
          ],
        ),
      ),
    );
  }
}
