import 'package:flutter/material.dart';

class ProductActionsButton extends StatelessWidget {
  ProductActionsButton({Key? key, required this.name, required this.ontap})
      : super(key: key);

  String name;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.4,
      height: 32,
      child: TextButton(
        onPressed: ontap,
        child: Text(name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
        style: TextButton.styleFrom(
          primary: Colors.black,
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color.fromARGB(221, 131, 131, 131),width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
