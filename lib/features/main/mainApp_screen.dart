import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainappScreen extends StatefulWidget {
  const MainappScreen({super.key});

  @override
  State<MainappScreen> createState() => _MainappScreenState();
}

class _MainappScreenState extends State<MainappScreen> {
   int current_index = 0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (index) {
          setState(() {
            current_index=index;
          });
        },
        backgroundColor: Appcolors.textborder,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Appcolors.orangecolor,
        unselectedItemColor: Appcolors.dark,

        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Appimages.home,
              color: Appcolors.orangecolor,
            ),
            icon: SvgPicture.asset(Appimages.home),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Appimages.category,
              color: Appcolors.orangecolor,
            ),
            icon: SvgPicture.asset(Appimages.category),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Appimages.profile,color: Appcolors.orangecolor,),
            icon: SvgPicture.asset(Appimages.profile),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: Appcolors.orangecolor),
            icon: Icon(Icons.search),
            label: '',
          ),
        ],
      ),
    );
  }
}
