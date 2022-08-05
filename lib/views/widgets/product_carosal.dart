import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCarosal extends StatelessWidget {
  ProductCarosal(
      {Key? key,
      required this.name,
      required this.image,
      required this.shoename,
      required this.ontap})
      : super(key: key);

  String name;
  final image;
  String shoename;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCTitle(name: name),
          kHeight5,
          GestureDetector(
            onTap: ontap,
            child: LimitedBox(
                maxHeight: 240,
                child: StreamBuilder(stream: FirebaseFirestore.instance.collection('latest arrivals').snapshots(), 
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ProductCard(image: snapshot.data!.docs[index]['Image'].toString(), shoename: snapshot.data!.docs[index]['Product name'],price: snapshot.data!.docs[index]['Price'],), 
                      separatorBuilder: (context, index) => SizedBox(
                            width: 5,
                          ),
                      itemCount: snapshot.data!.docs.length);
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class ProductCTitle extends StatelessWidget {
  ProductCTitle({Key? key, required this.name}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
