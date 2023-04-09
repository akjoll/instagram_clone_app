
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/screens/activity/activity_screen.dart';
import 'package:instagram_clone_app/features/presentation/screens/home/home_screen.dart';
import 'package:instagram_clone_app/features/presentation/screens/post/upload_post_screen.dart';
import 'package:instagram_clone_app/features/presentation/screens/profile/profile.dart';
import 'package:instagram_clone_app/features/presentation/screens/search/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(MaterialCommunityIcons.home_variant,color: primaryColor,),label: ''),
          BottomNavigationBarItem(icon: Icon(Ionicons.md_search,color: primaryColor,),label: ''),
          BottomNavigationBarItem(icon: Icon(Ionicons.md_add_circle,color: primaryColor,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: primaryColor,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: primaryColor,),label: ''),
        ],
        onTap: navigationTaped,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(),
          SearchScreen(),
          UploadPostScreen(),
          ActivityScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  void navigationTaped(int index){
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
