import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Login%20Screen/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            const Text("Forgot Password",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                )),
            kHeight50,
            const Text(
              "Please, enter your email address. You will receive a link to create a new password via email.",
             // style: TextStyle(fontWeight: FontWeight.w600),
            ),
            kHeight10, 
            FormFieldWidget(text: "Email"),
           
            kHeight50,
            SizedBox(
              width: double.infinity,
              height: 55,
              child: TextButton(
                onPressed: () {},
                child: const Text("SEND",
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
            
          ],
        ),
      ),
    );
  }
}
