import 'package:flutter/material.dart';
import 'package:sepatu/pages/home/chat_page.dart';
import 'package:sepatu/pages/home/home_page.dart';
import 'package:sepatu/pages/home/profile_page.dart';
import 'package:sepatu/pages/home/wishlist_page.dart';
import 'package:sepatu/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 30,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30), //buat border NavBar
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: subtitleColor,
              currentIndex: currentIndex,
              onTap: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 7.5,
                    ),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 19,
                      color:
                          currentIndex == 0 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 7.5,
                    ),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 21,
                      color:
                          currentIndex == 1 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 7.5,
                    ),
                    child: Image.asset(
                      'assets/icon_wishlist.png',
                      width: 21,
                      color:
                          currentIndex == 2 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: 'Wishlist',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 7.5,
                    ),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 20,
                      color:
                          currentIndex == 3 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: 'Profile',
                ),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //Button di tengah
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
