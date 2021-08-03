import 'package:coffeetek/config/palette.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.brown),
        title: Text("Login", style: brownText),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back!", style: boldText),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: "Email"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: brownText,
                          ))
                    ],
                  )),
                ),
                TextButton(
                    style: flatButtonBrown(320),
                    onPressed: () {},
                    child: Text("Log In", style: whiteText)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Don't have an account? ",
                          style: greyText,
                          children: [
                            TextSpan(text: "Register", style: brownText)
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
