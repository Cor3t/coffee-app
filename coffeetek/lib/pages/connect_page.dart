import 'package:coffeetek/config/palette.dart';
import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/coffee_cart.jpg")),
          Text("Get the best coffee", style: boldText),
          Text("in town!", style: boldText),
          Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: flatButtonBrown(150),
                    onPressed: () {},
                    child: Text("Register", style: whiteText)),
                Spacer(),
                TextButton(
                    style: flatButtonWhite(Colors.brown, 150),
                    onPressed: () {},
                    child: Text(
                      "Log in",
                      style: brownText,
                    ))
              ],
            ),
          ),
          TextButton(
              style: flatButtonWhite(Colors.blue, 315),
              onPressed: () {},
              child: Text("Connect with Facebook"))
        ],
      ),
    );
  }
}
