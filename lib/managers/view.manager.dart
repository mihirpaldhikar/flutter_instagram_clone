import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/ui/components/circular_image.component.dart';
import 'package:flutter_instagram_clone/ui/screens/home.screen.dart';
import 'package:flutter_instagram_clone/ui/screens/profile.screen.dart';
import 'package:flutter_instagram_clone/ui/screens/reels.screen.dart';
import 'package:flutter_instagram_clone/ui/screens/search.screen.dart';
import 'package:flutter_svg/svg.dart';

class ViewManager extends StatefulWidget {
  const ViewManager({Key? key}) : super(key: key);

  @override
  _ViewManagerState createState() => _ViewManagerState();
}

class _ViewManagerState extends State<ViewManager> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/reels.svg',
              width: 20,
              height: 20,
            ),
            label: 'Reels',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 25,
              color: Colors.black,
            ),
            label: 'Activity',
          ),
          const BottomNavigationBarItem(
            icon: CircularImage(
              imageUrl: 'assets/images/profile.jpg',
              height: 35,
              width: 35,
            ),
            label: 'Reels',
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
    );
  }
}
