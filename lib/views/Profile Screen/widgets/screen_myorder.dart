import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Profile%20Screen/widgets/order_card.dart';

import 'package:flutter/material.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My Orders",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            centerTitle: true,
            bottom: const TabBar(
              labelColor: kRedColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Delivered",
                ),
                Tab(
                  text: "Processing",
                ),
                Tab(
                  text: "Cancelled",
                ),
              ],
              indicatorWeight: 1,
              indicatorColor: kRedColor,
            ),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemBuilder: (context, index) => OrderCardWidget(
                    ordernum: "12345",
                    orderquantity: 2,
                    status: "Delivered",
                    
                    colour: Colors.green),
                itemCount: 7),
            ListView.builder(
                itemBuilder: (context, index) => OrderCardWidget(
                    ordernum: "12345",
                    orderquantity: 2,
                    status: "Processing",
                    buttonVisibile2: true,
                    colour: Color.fromARGB(255, 212, 192, 11)),
                itemCount: 7),
            ListView.builder(
                itemBuilder: (context, index) => OrderCardWidget(
                    ordernum: "12345",
                    orderquantity: 2,
                    status: "Cancelled",
                    colour: Colors.red),
                itemCount: 7),
          ]),
        ),
      ),
    );
  }
}
