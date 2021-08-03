import 'package:coffeetek/config/option.dart';
import 'package:coffeetek/config/palette.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu",
            style: brownText,
          ),
        ),
        body: Column(
          children: [
            Divider(
              thickness: 1,
            ),
            Expanded(
                child: Container(
                    child: ListView.builder(
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 90,
                                child: Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 30, right: 30),
                                      height: 50,
                                      child: Image(
                                          image: AssetImage(
                                              options[index].iconName)),
                                    ),
                                    Text(
                                      options[index].title,
                                      style: midBoldText,
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                            ],
                          );
                        })))
          ],
        ));
  }
}
