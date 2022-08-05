import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';

class MyBagCardWidget extends StatelessWidget {
  const MyBagCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(10),
            //color: Color.fromARGB(255, 214, 208, 208)
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            kWidth5,
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: kImageNike, fit: BoxFit.cover)),
            ),
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                Text("NIKE Running Shoes"),
                Row(
                  children: [Text("Color: Red"), kWidth20, Text("Size: 9")],
                ),
                kHeight10,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                     backgroundColor: Color.fromARGB(255, 214, 213, 213),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove,
                            size: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    kWidth5,
                    Text("1",style: TextStyle(fontSize: 20),),
                    kWidth5,
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:  Color.fromARGB(255, 214, 213, 213),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            kWidth10, 
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.highlight_remove_sharp,color: Color.fromARGB(255, 142, 141, 141),)),
                Text(
                  "1299",
                  style: TextStyle(fontSize: 15),
                ),
                kHeight10
              ],
            ),
           // kWidth5,
          ],
        ),
      ),
    );
  }
}