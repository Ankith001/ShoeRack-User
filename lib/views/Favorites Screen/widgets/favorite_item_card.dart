import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoriteItemCardWidget extends StatelessWidget {
  const FavoriteItemCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(border: Border.all(width: 0.1),
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kWidth10,
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: kImageNikeRed,fit: BoxFit.cover)
            ),
              height: 100,
              width: 120,
              //color: Colors.white,
            ),
            kWidth5,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // kHeight10,
                Text("Nike Runnning Shoes"),
                Row(
             
                  children: [
                    Text("Color : Red"),
                    kWidth10, 
                    Text("Size : 9"),
                  ],
                ),
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
                   Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 15,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.highlight_remove_rounded,color: Colors.grey,)),
                 CircleAvatar(radius: 16,backgroundColor: kRedColor,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_rounded,color: Colors.white ,size: 15,))), 
                 
              ],
            )
          ],
        ),
      ),
    );
  }
}