import 'package:ecommerce/core/constants.dart';

import 'package:ecommerce/views/Login%20Screen/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            const Text("Sign up for free",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                )),
            kHeight50,
            FormFieldWidget(text: "Name"),
            kHeight5,
            FormFieldWidget(text: "Email"),
            kHeight5,
            FormFieldWidget(text: "Password"),
            kHeight5,
            FormFieldWidget(text: "Re-enter Password"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_right_alt_sharp,
                      color: kRedColor,
                    ))
              ],
            ),
            kHeight20,
            SizedBox(
              width: double.infinity,
              height: 55,
              child: TextButton(
                onPressed: () {},
                child: const Text("SIGN UP",
                    style: TextStyle(fontWeight: FontWeight.w600)),
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
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Or Signup with social account",
                      //style: TextStyle(fontWeight: FontWeight.w600),
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
                    ),
                    kHeight20
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
