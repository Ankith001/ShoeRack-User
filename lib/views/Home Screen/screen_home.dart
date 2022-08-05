import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/widgets/product_carosal.dart';
import 'package:ecommerce/views/widgets/screen_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.shopify_outlined,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: kRedColor,
        title: const Text(
          "ShoeRack",
          textScaleFactor: 1.5,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: const [
          Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 30,
          ),
          kWidth5
        ],
      ),
      //   backgroundColor: Colors.black12,
      body: ListView(
        children: [
          SizedBox(
            height: 1,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 16,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  itemCount: 15,
                  itemBuilder:
                      (BuildContext context, index, int pageViewIndex) =>
                          CarosalCard())
            ],
          ),
          kHeight10,
          ProductCarosal(
              name: "Latest Arrivals",
              image: kImageNike,
              shoename: "Nike\nRunning Shoes",
              ontap: () => Get.to(ScreenProduct())),
          kHeight10,
          ProductCarosal(
              name: "Trending ",
              image: kImageNikeRed,
              shoename: "NIKE\nCasual Wear",
              ontap: () => Get.to(ScreenProduct())),
          kHeight10
        ],
      ),
    );
  }
}

class CarosalCard extends StatelessWidget {
  const CarosalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: kImageNikeRed,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
