import 'package:ecommerce/buttons/order_tab_button.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/order_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderCardWidget extends StatelessWidget {
  OrderCardWidget(
      {Key? key,
      required this.ordernum,
      required this.orderquantity,
      required this.status,
      this.buttonVisibile = true,
      this.buttonVisibile2= false,
      required this.colour})
      : super(key: key);
  String ordernum;
  int orderquantity;
  String status;
  Color colour;
  bool buttonVisibile;
  bool buttonVisibile2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.width * 0.02),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(255, 213, 213, 213))),
        width: size.width * 1,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: size.width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order No: $ordernum"),
                  Text("Quantity: $orderquantity"),
                  Row(
                    children: [
                      Visibility(
                        visible: buttonVisibile,
                        child: OrdersTabButtonWidget(
                          buttonname: "Details",
                          ontap: () => Get.to(
                            ScreenOrderDetails(),
                          ),
                        ),
                      ),
                      kWidth5,
                      Visibility(
                        visible: buttonVisibile2,
                        child: OrdersTabButtonWidget(
                          buttonname: "Cancel",
                          ontap: () => Get.to(
                            ScreenOrderDetails(),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("05-12-2019"),
                  Text("Total Amount: ₹1299"),
                  Text(
                    status,
                    style: TextStyle(color: colour),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
