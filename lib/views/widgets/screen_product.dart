import 'package:ecommerce/buttons/add_to_bag.dart';
import 'package:ecommerce/buttons/buy_now_button.dart';
import 'package:ecommerce/buttons/product_button.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/widgets/product_carosal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScreenProduct extends StatelessWidget {
  ScreenProduct({Key? key}) : super(key: key);

  List ItemDetails = [
    "-Much Comfort",
    "-Good Material",
    "-Very good Product",
    "-Very good Product",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sports Shoe",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.5,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      image: DecorationImage(image: kImage1)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductActionsButton(name: "Size", ontap: () {}),
                    ProductActionsButton(name: "Color", ontap: () {}),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Shoe Running Shoes",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "₹1299",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Shoe Running Shoes"),
                    kHeight5,
                    RatingBar.builder(
                      itemSize: 20,
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
                    )
                  ],
                ),
                kHeight20,
                const Text(
                  "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                  maxLines: 2,
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AddToBagButton(size: size, buttonname: "ADD TO BAG", ontap: (){}),
                    BuyNowButtonWidget(size: size, buttonname: "BUY NOW", ontap: (){}),
                  ],
                ),
                kHeight20,
                const Text(
                  "Sold by Autoglit Retail Private Ltd.",
                  style: TextStyle(fontSize: 15),
                ),
                kHeight10,
                const Text(
                  "More Details",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                ...List.generate(
                    ItemDetails.length,
                    (index) => Column(
                          children: [Text(ItemDetails[index]), kHeight5],
                        )),
                kHeight5,
              ],
            ),
          ),
          ProductCarosal(
              name: "You may also like this",
              image: kImage1,
              shoename: "NIKE",
              ontap: () {}),
          kHeight10
        ],
      ),
    );
  }
}
