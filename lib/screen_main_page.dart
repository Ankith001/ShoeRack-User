import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/views/Bag%20Screen/screen_bag.dart';
import 'package:ecommerce/views/Favorites%20Screen/screen_favorite.dart';
import 'package:ecommerce/views/Home%20Screen/screen_home.dart';
import 'package:ecommerce/views/Login%20Screen/screen_login.dart';
import 'package:ecommerce/views/Profile%20Screen/screen_profile.dart';
import 'package:ecommerce/views/Shop%20Screen/screen_shop.dart';
import 'package:flutter/material.dart';
ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({ Key? key }) : super(key: key);

  final _pages = const [
    ScreenHome(), 
    ScreenShop(),
    ScreenBag(),
    ScreenFavorites(),
    ScreenProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar:ValueListenableBuilder(valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
        
      
        return BottomNavigationBar( 
            selectedFontSize: 12,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index){ 
              indexChangeNotifier.value= index;
            },
            backgroundColor: Colors.white,
            selectedItemColor: kRedColor,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color:kRedColor,size: 30 ),
            unselectedIconTheme: const IconThemeData(color: Colors.grey,size: 30),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled ), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "Bag"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_rounded), label: "Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded),
                  label: "Profile"),
            ],
          );}
      )
    );
  }
}