import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Favorites%20Screen/widgets/favorite_item_card.dart';
import 'package:ecommerce/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appbartitle: "Favorites",),
      body: ListView(
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) => FavoriteItemCardWidget(),
              separatorBuilder: (context, index) => kHeight5,
              itemCount: 7)
        ],
      ),
    );
  }
}
