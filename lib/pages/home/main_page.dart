import 'package:flutter/material.dart';
import 'package:myapp/pages/home/chat_page.dart';
import 'package:myapp/pages/home/home_page.dart';
import 'package:myapp/pages/home/profile_page.dart';
import 'package:myapp/pages/home/wishlist_page.dart';
import 'package:myapp/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 2:
        return WishlistPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: backgroundColor4,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_home.png",
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_chat.png",
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_favorite.png",
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_profile.png",
                  color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                  width: 18,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class customBottomNav extends StatefulWidget {
  const customBottomNav({
    super.key,
  });

  @override
  State<customBottomNav> createState() => _customBottomNavState();
}

class _customBottomNavState extends State<customBottomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        color: backgroundColor4,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: backgroundColor4,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_home.png",
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_chat.png",
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_favorite.png",
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                  width: 20,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Image.asset(
                  "assets/icon_profile.png",
                  color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                  width: 18,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class cartButton extends StatelessWidget {
  const cartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context, "/cart"),
      backgroundColor: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        "assets/icon_cart.png",
        width: 20,
      ),
    );
  }
}
