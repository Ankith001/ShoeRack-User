import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/check_out_screen.dart';
import 'package:ecommerce/views/Bag%20Screen/widgets/my_bag_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenBag extends StatelessWidget {
  const ScreenBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Bag",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => MyBagCardWidget(),
                  separatorBuilder: (context, index) => kHeight5,
                  itemCount: 13),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("Total Amount :",style: TextStyle(fontSize: 20),), Text("1299",style: TextStyle(fontSize: 20),)],
                  ),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: TextButton(
                        onPressed: () => Get.to(ScreenCheckOut()),
                        child: const Text(
                          "CHECK OUT",
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5,
                          backgroundColor: kRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
