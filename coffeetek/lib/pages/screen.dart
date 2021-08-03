import 'package:coffeetek/config/palette.dart';
import 'package:coffeetek/pages/homepage.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  int currentIndex = 0;
  int items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(spreadRadius: 2, color: Colors.grey[300])]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon:
                    Icon(currentIndex == 0 ? Icons.home : Icons.home_outlined),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                }),
            Stack(
              children: [
                IconButton(
                    icon: Icon(currentIndex == 1
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined),
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    }),
                Positioned(
                    right: 10,
                    top: 5,
                    child: Container(
                      width: 17,
                      height: 17,
                      child: Center(
                          child: Text(
                        "2",
                        style: whiteText,
                      )),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20)),
                    ))
              ],
            ),
            IconButton(
                icon: Icon(
                    currentIndex == 2 ? Icons.person : Icons.person_outline),
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                })
          ],
        ),
      ),
    );
  }
}
