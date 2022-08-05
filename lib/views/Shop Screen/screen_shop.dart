import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Shop%20Screen/kids_category.dart';
import 'package:ecommerce/views/Shop%20Screen/men_category.dart';
import 'package:ecommerce/views/Shop%20Screen/women_category.dart';
import 'package:flutter/material.dart';

class ScreenShop extends StatelessWidget {
  const ScreenShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Categories",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: const TabBar(
            tabs: [
              Text(
                "Women",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Men",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Kids",
                style: TextStyle(fontSize: 20),
              ),
            ],
            labelColor: Colors.black,
            indicatorWeight: 3,
            indicatorColor: kRedColor,
          ),
        ),
        body: TabBarView(children: [
         ScreenWomenCategory(),
          ScreenMenCategory(),
          ScsreenKidsCategory(),
        ]),
      ),
    ));
  }
}
