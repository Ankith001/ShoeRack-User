import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Shop%20Screen/category_card_widget.dart';
import 'package:flutter/material.dart';

List ShoesList = [
  "Sports Shoes",
  "Running Shoes",
  "Sneakers",
  "Casual wears",
  "Sports Shoes",
  "Running Shoes",
  "Sneakers",
  "Casual wears",
  "Sports Shoes",
  "Running Shoes",
  "Sneakers",
  "Casual wears",
];

class ScreenWomenCategory extends StatelessWidget {
  ScreenWomenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: kRedColor),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text("SUMMER SALES\nUp to 50% OFF",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ),
        ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) => CategoryCardWidget(
                image: kImageNike, categoryname: ShoesList[index].toString()))
      ],
    );
  }
}


