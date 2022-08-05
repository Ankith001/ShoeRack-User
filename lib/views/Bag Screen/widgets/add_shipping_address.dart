import 'dart:ui';

import 'package:ecommerce/buttons/big_red_button.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ScreenAddShippingAddress extends StatelessWidget {
  const ScreenAddShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(appbartitle: "Add Shipping Address"), 
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      kHeight5,
                      TextFormShippingAddWidget(formname: "Full Name"),
                      kHeight10,
                      TextFormShippingAddWidget(formname: "Address"),
                      kHeight10,
                      TextFormShippingAddWidget(formname: "City"),
                      kHeight10,
                      TextFormShippingAddWidget(formname: "State"),
                      kHeight10,
                      TextFormShippingAddWidget(formname: "Zip code"),
                      kHeight10,
                      TextFormShippingAddWidget(formname: "Country"),
                      kHeight10
                    ],
                  ),
                ),
              ),

              // Spacer(),
              BigRedButtonWidget(
                  buttonname: "SAVE ADDRESS", bold: FontWeight.normal),
              kHeight10,
            ],
          ),
        ));
  }
}



class TextFormShippingAddWidget extends StatelessWidget {
  TextFormShippingAddWidget({Key? key, required this.formname})
      : super(key: key);

  String formname;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: validateName,
      keyboardType: TextInputType.text,
      // controller: nameController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          // fillColor: Color.fromARGB(255, 213, 213, 213),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1.5, color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: Text(formname),
          labelStyle: TextStyle(color: Colors.black)
          //  hintStyle: GoogleFonts.inter(),
          ),
    );
  }
}
