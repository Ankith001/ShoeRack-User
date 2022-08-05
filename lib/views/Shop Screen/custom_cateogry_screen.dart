import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Shop%20Screen/widgets/product_grid_card.dart';
import 'package:ecommerce/views/widgets/product_card.dart';
import 'package:ecommerce/views/widgets/screen_product.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class CustomCategoryScreen extends StatelessWidget {
  CustomCategoryScreen({Key? key, required this.name}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.sort))
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
          ),
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
            return ProductGridCard(); 
          }),
      // ListView.separated(
      //     physics: ScrollPhysics(),
      //     shrinkWrap: true,
      //     itemBuilder: (context, index) => ProductTileCategory(name: name, image: kImageNike),
      //     separatorBuilder: (context, index) => kHeight5,
      //     itemCount: 10),
    );
  }
}



class ProductTileCategory extends StatelessWidget {
  ProductTileCategory({Key? key, required this.name, required this.image})
      : super(key: key);

  String name;
  dynamic image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Get.to(ScreenProduct()),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kRedColor,
          ),
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: image, fit: BoxFit.cover),
                  ),
                  width: 120,
                  height: 100,
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    RatingBar.builder(
                      itemSize: 16,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      "1299",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.grey,
                    ),
                  )),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
