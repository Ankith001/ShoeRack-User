import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductGridCard extends StatelessWidget {
  const ProductGridCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.symmetric(horizontal: 5),
              //   color: kRedColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight10,
                  Container(
                    width: double.infinity,
                    height: 135,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: kImageNikeRed, fit: BoxFit.cover),
                    ),
                  ),
                  kHeight5,
                  Text(
                    "Nike Running Shoes",
                    overflow: TextOverflow.ellipsis,
                  ),
                  kHeight5,
                  // Text("MRP ₹1299",style: TextStyle(fontWeight: FontWeight.bold ),),
                  RichText(
                    text: TextSpan(
                      text: 'MRP ',
                      style: DefaultTextStyle.of(
                        context,
                      ).style,
                      children: const <TextSpan>[
                        TextSpan(
                            text: '₹1299',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  kHeight5,
                  Container(
                    width: 70,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kRedColor),
                        child: Center(child: Text("Free Delivery",style: TextStyle(fontSize: 10,color: Colors.white),)),
                  ),
                  kHeight5,
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 3.5,
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
                      kWidth5,
                      Text(
                        "221 Ratings",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(34, 114, 105, 105),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
