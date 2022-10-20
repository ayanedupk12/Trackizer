import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'homescreens/homescreen.dart';

class pagescontroller extends StatefulWidget {
  const pagescontroller({Key? key}) : super(key: key);

  @override
  State<pagescontroller> createState() => _pagescontrollerState();
}

class _pagescontrollerState extends State<pagescontroller> {
  dynamic selected;
  PageController controller = PageController();

  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StylishBottomBar(
          items: [
            //todo: selected colour
            AnimatedBarItems(icon: Image(image: AssetImage('assets/icons/home.png'),), title: Text('')),
            AnimatedBarItems(icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image(image: AssetImage('assets/icons/rounded_square.png'),),
                    Image(image: AssetImage('assets/icons/rounded_square.png'),),
                  ],
                ),
                Row(
                  children: [
                    Image(image: AssetImage('assets/icons/rounded_square.png'),),
                    Image(image: AssetImage('assets/icons/rounded_square.png'),),
                  ],
                ),
              ],
            ), title: Text('')),
            // AnimatedBarItems(icon: Icon(Icons.border_all_rounded), title: Text('')),
            AnimatedBarItems(icon: Image(image: AssetImage('assets/icons/calendar.png'),), title: Text('')),
            AnimatedBarItems(icon: Image(image: AssetImage('assets/icons/payment_card.png'),), title: Text('')),
          ],
          backgroundColor: Colors.white.withOpacity(0.2),
          unselectedIconColor: Colors.grey,
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.animated,
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,
          opacity: 0.3,
          iconSize: 30,
          currentIndex: selected ?? 0,
          onTap: (index) {
            controller.jumpToPage(index!);
            setState(() {
              selected = index;
            });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                gradient: RadialGradient(
                    radius: 2, colors: [
                  Color(0xFFFF7F37),
                    Colors.white,

            ])),
            child: Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Color(0xFF0E0E12),
      body: SafeArea(
          child: PageView(
        controller: controller,
        children: [
          HomeScreen(),
          Text('2nd page')],
      )),
    );
  }
}
