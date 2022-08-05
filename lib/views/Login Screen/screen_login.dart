import 'package:ecommerce/buttons/big_red_button.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Login%20Screen/screen_forgot_password.dart';
import 'package:ecommerce/views/Login%20Screen/screen_signup.dart';
import 'package:ecommerce/views/Login%20Screen/widgets/textformfield.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appbartitle: "Login"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopify,size: 30,),
                Text("ShoeRack",
                    style: TextStyle(color: kRedColor,fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
            kHeight50,
            FormFieldWidget(text: "Email"),
            kHeight5,
            FormFieldWidget(text: "Password"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () => Get.to(ForgotPassword()),
                  icon: Icon(
                    Icons.arrow_right_alt_sharp,
                    color: kRedColor,
                  ),
                  label: Text(
                    "Forgot your password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            kHeight20,
            BigRedButtonWidget(buttonname: "LOG IN", bold: FontWeight.bold),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Or login with social account",
                      // style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    kHeight10,
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 213, 213, 213),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mail),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 213, 213, 213),
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.phone_android)),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100),
            TextButton.icon(
              onPressed: () => Get.to(SignUpScreen()),
              icon: Icon(
                Icons.arrow_right_alt_sharp,
                color: kRedColor,
              ),
              label: Text(
                "Create new account here",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
