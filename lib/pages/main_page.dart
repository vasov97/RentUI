import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';
import 'package:rent_ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    // const CartPage(),
    // const PlantListPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              backgroundColor: AppColors.mainGrey,
              label: '',
              icon: Icon(
                Icons.home,
                color: AppColors.textGrey,
              ),
              activeIcon: Icon(
                Icons.favorite_border_outlined,
                color: AppColors.mainYellow,
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.calendar_month,
                color: AppColors.textGrey,
              ),
              activeIcon: Icon(
                Icons.message,
                color: AppColors.mainYellow,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
                color: AppColors.textGrey,
              ),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: AppColors.mainYellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
