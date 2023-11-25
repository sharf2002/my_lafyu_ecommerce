import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/favourite_screen.dart';
import 'package:my_lafyu_ecommerce/features/home/persentation/view/home_view.dart';
import 'package:my_lafyu_ecommerce/profile_screen.dart';
import 'package:my_lafyu_ecommerce/search_screen.dart';

class BottomNavBar extends StatefulWidget {
 BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex=0;
  List navScreens = [HomeView(),SearchScreen(),FavouriteScreen(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

        ],
        onTap: (int index){
          setState(() {
            currentIndex = index ;
          });
        },
      ),
      body: navScreens[currentIndex],
    );
  }
}
