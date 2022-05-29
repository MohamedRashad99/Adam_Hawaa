
import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/home/view.dart';
import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/notifications/view.dart';
import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/offers/view.dart';
import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/profile/view.dart';
import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/reversings/view.dart';
import 'package:flutter/material.dart';

import '../../widgets/constants.dart';


class HomeTabBarScreen extends StatefulWidget {
  final int index;
  final String? userId;

  const HomeTabBarScreen({Key? key, this.index = 0, this.userId}) : super(key: key);

  @override
  State<HomeTabBarScreen> createState() => _HomeTabBarScreenState();
}

class _HomeTabBarScreenState extends State<HomeTabBarScreen> {
  static  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const OffersScreen(),
    const ReversingScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.index;
    super.initState();
  }

  // final ItemsBar _itemsBar = ItemsBar();
 // final token = Prefs.getString('token');

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return onWillPop(context);
      },
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar:
        BottomNavigationBar(
          backgroundColor: kHomeColor,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _onItemTapped(index);
            });
          },
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: ImageIcon( AssetImage("assets/image/home.png"),),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(

              icon: ImageIcon( AssetImage("assets/image/discountact.png"),),
              label:"عروض ",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon( AssetImage("assets/image/reservesact.png"),),
                label:  "حجوزات"),
            BottomNavigationBarItem(

              icon: ImageIcon( AssetImage("assets/image/notificationactive.png"),),
              label: "إشعارات",
            ),
            BottomNavigationBarItem(

              icon: ImageIcon( AssetImage("assets/image/user.png"),),
              label:"حسابي",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: kBlackText),
          unselectedIconTheme:  const IconThemeData(color: kBorderColor),
          selectedItemColor: kBlackText ,
          unselectedItemColor:kBorderColor ,


          selectedLabelStyle:  const TextStyle(
              fontFamily: 'DinMedium',
              fontSize: 16,

              color: kHomeColor),
          unselectedLabelStyle:  const TextStyle(
              fontFamily: 'Contrail',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: kBlackText),
          iconSize: 25,
        ),
      ),
    );
  }
}