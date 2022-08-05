import 'package:ecommerce/views/Shop%20Screen/custom_cateogry_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCardWidget extends StatelessWidget {
  CategoryCardWidget(
      {Key? key, required this.image, required this.categoryname})
      : super(key: key);

  String categoryname;
  final image;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(CustomCategoryScreen(name: categoryname,));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey[50],
          ),
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 120,
                child: Text(categoryname),
              ),
              Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: image, fit: BoxFit.cover)),
              )
            ],
          ),
        ),
      ),
    );
  }
}