import 'package:ecommerce/buttons/add_to_bag.dart';
import 'package:ecommerce/buttons/buy_now_button.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/order_card.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ScreenOrderDetails extends StatelessWidget {
  const ScreenOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBarWidget(appbartitle: "Order Details"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                OrderCardWidget(
                  ordernum: "123454",
                  orderquantity: 2,
                  status: "Delivered",
                  colour: Colors.green,
                  buttonVisibile: false,
                ),
                OrderDetailsProductCard(size: size),
                
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.02),
                  child: Text("Order Information"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.02),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 213, 213, 213)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Address :"),
                            Text("Payment Method :"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kaiparambu P.O,Thrissur"),
                            Text(
                              "PayPal",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AddToBagButton(size: size, buttonname: "Reorder", ontap: (){}) ,
                  BuyNowButtonWidget(size: size, buttonname: "Download Invoice", ontap: (){})
                ],
              ),
            )
          ],
        ));
  }
}

class OrderDetailsProductCard extends StatelessWidget {
  const OrderDetailsProductCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.width * 0.02),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 213, 213, 213)),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 120,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: kImageNike, fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Color.fromARGB(255, 158, 158, 158))),
              width: 80,
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nike Running Shoes"),
                Row(
                  children: [
                    Text("Color: White"),
                    kWidth5,
                    Text("Size : L"),
                  ],
                ),
                Text("Quantity : 1")
              ],
            ),
            kWidth5
          ],
        ),
      ),
    );
  }
}
