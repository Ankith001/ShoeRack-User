import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Shop%20Screen/category_card_widget.dart';
import 'package:ecommerce/views/Shop%20Screen/women_category.dart';
import 'package:flutter/material.dart';

class ScreenMenCategory extends StatelessWidget {
   ScreenMenCategory({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: [
        ListView.builder(itemCount: 10 ,shrinkWrap: true,physics: ScrollPhysics(),
          itemBuilder: (context, index) => CategoryCardWidget(image: kImageNike, categoryname: ShoesList[index].toString() ))
      ],
    );
  }
}