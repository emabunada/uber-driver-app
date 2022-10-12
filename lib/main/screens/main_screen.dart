import 'package:drivers_app/global/utils/app_colors.dart';
import 'package:drivers_app/taps/screens/earning_tab_screen.dart';
import 'package:drivers_app/taps/screens/home_tab_screen.dart';
import 'package:drivers_app/taps/screens/profile_tab_screen.dart';
import 'package:drivers_app/taps/screens/ratings_tab_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController?.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomeTabScreen(),
          EarningTabScreen(),
          RatingsTabScreen(),
          ProfileTabScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Earnings"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Ratings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        unselectedItemColor: Colors.white54,
        selectedItemColor: white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        onTap: onItemClicked,
      ),
    );
  }
}
