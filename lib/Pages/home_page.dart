import 'package:flutter/material.dart';
import 'package:hadith_app/Widgets/hadis_widgets.dart';
import 'package:hadith_app/Widgets/audio_widgets.dart';
import 'package:hadith_app/Widgets/home_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: const [
          HomeWidgets(),
          AudioPage(),
          HadisWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: const Color(0xffABD3DB),
        selectedItemColor: const Color(0xffFFF3F3),
        unselectedItemColor: Colors.white,

        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "হোম",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_music_outlined),
            activeIcon: Icon(Icons.my_library_music),
            label: "অডিও",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            activeIcon: Icon(Icons.menu_book),
            label: "হাদিস",
          ),
        ],
      ),
    );
  }
}
