// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// import 'package:dialysis_practice/screens/dashboard.dart';
// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   /// Controller to handle PageView and also handles initial page
//   final _pageController = PageController(initialPage: 0);

//   /// Controller to handle bottom nav bar and also handles initial page
//   final NotchBottomBarController _controller = NotchBottomBarController(index: 0);

//   int maxCount = 5;

//   @override
//   void dispose() {
//     _pageController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     /// widget list
//     final List<Widget> bottomBarPages = [
//       Dashboard(
//         controller: (_controller),
//       ),
//       // const Page2(),
//     ];
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         physics: const NeverScrollableScrollPhysics(),
//         children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
//       ),
//       extendBody: true,
//       bottomNavigationBar: (bottomBarPages.length <= maxCount)
//           ? AnimatedNotchBottomBar(
//               /// Provide NotchBottomBarController
//               notchBottomBarController: _controller,
//               color: Color(0xff314CA3),
//               showLabel: true,
//               textOverflow: TextOverflow.visible,
//               maxLine: 1,
//               shadowElevation: 5,
//               kBottomRadius: 28.0,

//               // notchShader: const SweepGradient(
//               //   startAngle: 0,
//               //   endAngle: pi / 2,
//               //   colors: [Colors.red, Colors.green, Colors.orange],
//               //   tileMode: TileMode.mirror,
//               // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
//               notchColor: Colors.black87,

//               /// restart app if you change removeMargins
//               removeMargins: false,
//               bottomBarWidth: 500,
//               showShadow: false,
//               durationInMilliSeconds: 300,

//               itemLabelStyle: const TextStyle(fontSize: 10),

//               elevation: 1,
//               bottomBarItems: const [
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.home_filled,
//                     color: Colors.blueGrey,
//                   ),
//                   activeItem: Icon(
//                     Icons.home_filled,
//                     color: Colors.blueAccent,
//                   ),
//                   itemLabel: 'Home',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: Icon(Icons.star, color: Colors.blueGrey),
//                   activeItem: Icon(
//                     Icons.star,
//                     color: Colors.blueAccent,
//                   ),
//                   itemLabel: 'Schedules',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.settings,
//                     color: Colors.blueGrey,
//                   ),
//                   activeItem: Icon(
//                     Icons.list_alt,
//                     color: Colors.pink,
//                   ),
//                   itemLabel: 'Reports',
//                 ),
//               ],
//               onTap: (index) {
//                 // log('current selected index $index');
//                 _pageController.jumpToPage(index);
//               },
//               kIconSize: 24.0,
//             )
//           : null,
//     );
//   }
// }



import 'dart:developer';

import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            bottomNavigationBar: AnimatedBottomNavigationBar(
          barColor: Colors.white,
          controller: FloatingBottomBarController(initialIndex: 1),
          bottomBar: [
            BottomBarItem(
              icon: const Icon(Icons.photo, size: 50),
              iconSelected: const Icon(Icons.photo,
                  color: Colors.red,
                  size: 20),
              title: "example.Strings.search",
              dotColor: Colors.red,
              onTap: (value) {
                setState(() {
                });
              },
            ),
            BottomBarItem(
              icon: const Icon(Icons.photo, size: 50),
              iconSelected: const Icon(Icons.photo,
                  color: Colors.red,
                  size: 20),
              title: "example.Strings.search",
              dotColor: Colors.red,
              onTap: (value) {
                setState(() {
                });
              },
            ),
            ],
            bottomBarCenterModel: BottomBarCenterModel(
        centerBackgroundColor: Colors.yellow,
        centerIcon: const FloatingCenterButton(
          child: Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
        centerIconChild: [
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.home,
              color: AppColors.white,
            ),
            onTap: () => log('Item1'),
          ),
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.access_alarm,
              color: AppColors.white,
            ),
            onTap: () => log('Item2'),
          ),
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.ac_unit_outlined,
              color: AppColors.white,
            ),
            onTap: () => log('Item3'),
          ),
        ],
      )
            
            ),
    );
  }
}