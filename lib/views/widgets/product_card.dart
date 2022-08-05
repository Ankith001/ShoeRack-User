import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
   ProductCard({
    Key? key,required this.image,required this.shoename,required this.price
  }) : super(key: key);

  final image;
  String shoename;
  int price;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      padding: EdgeInsets.all(8 ),
      height: 215,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                width: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
              ),
              Positioned(
                right: 3,
                top: 3,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.grey,
                      )),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 140,
            color: Colors.white12,
            child: Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight5,
                        Text(
                          shoename,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          price.toString(), 
                          style: TextStyle(color: kRedColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4.5"),
                        Icon(Icons.star_half_outlined,color: Colors.yellow,)
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}