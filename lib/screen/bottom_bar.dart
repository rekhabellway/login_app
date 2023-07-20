import 'package:flutter/material.dart';
import 'package:login_app/screen/food_screen.dart';
import 'package:login_app/screen/phone_pay_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}
class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;

  static final List<Widget>_widgetOptions =<Widget>[

    const FoodScreen(),


  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store,),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety,),
            label: 'Insurance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web_asset,),
            label: 'Wealth',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,),
            label: 'History',
          ),



        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple.shade900,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.shade600,
      ),
      body:  PhonePayScreen(),
    );
  }
}



