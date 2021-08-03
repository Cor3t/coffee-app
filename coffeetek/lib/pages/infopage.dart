import 'package:coffeetek/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InfoView extends StatefulWidget {
  final String assetImage;
  final int price;
  final String name;
  InfoView({this.assetImage, this.price, this.name});
  InfoViewState createState() => InfoViewState();
}

class InfoViewState extends State<InfoView> {
  int amount = 1;
  int cupSize = 100;
  int sugarAmount = 50;
  int addition;
  String currency = "\u20A6";

  int total() {
    int sum = (500 + cupSize + amount + sugarAmount) * amount;
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perferences", style: brownText)),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.brown[100],
                width: MediaQuery.of(context).size.width,
                height: 190,
                child: Center(
                    child: Image(
                  image: AssetImage("assets/lattee.png"),
                  height: 100,
                )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latte",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.brown[900],
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                            text: TextSpan(
                                text: currency,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                children: [TextSpan(text: "500")]))
                      ],
                    ),
                    Spacer(),
                    Text("$amount", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 15),
                    TextButton(
                      style: add,
                      onPressed: () {
                        if (amount > 1) {
                          setState(() {
                            amount -= 1;
                          });
                        }
                      },
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                        style: substract,
                        onPressed: () {
                          if (amount < 100) {
                            setState(() {
                              amount += 1;
                            });
                          }
                        },
                        child: Icon(Icons.add))
                  ],
                ),
              ),
              Divider(thickness: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Size",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(width: 10),
                    cup(30, 50),
                    cup(40, 100),
                    cup(50, 150),
                  ],
                ),
              ),
              Divider(thickness: 1),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sugar",
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      SizedBox(width: 10),
                      sugar("assets/nosugar.png", 0),
                      sugar("assets/1sugar.png", 50),
                      sugar("assets/2sugar.png", 100),
                      sugar("assets/3sugar.png", 150),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Additions",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(width: 10),
                    additions("assets/whipped-cream.png", 50),
                    additions("assets/flower.png", 100),
                  ],
                ),
              ),
              Divider(thickness: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:", style: TextStyle(fontSize: 27)),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.brown),
                                text: currency,
                                children: [TextSpan(text: "${total()}")]))
                      ],
                    ),
                    SizedBox(height: 50),
                    TextButton(
                        style: flatButtonBrown(320),
                        onPressed: () {},
                        child: Text(
                          "Add to cart",
                          style: whiteText,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector cup(double size, int cup) {
    return GestureDetector(
      onTap: () {
        setState(() {
          cupSize = cup;
        });
      },
      child: Image(
        image: AssetImage("assets/cup.png"),
        height: size,
        color: cupSize == cup ? Colors.brown : Colors.grey,
      ),
    );
  }

  GestureDetector sugar(String asset, int sugar) {
    return GestureDetector(
        onTap: () {
          setState(() {
            sugarAmount = sugar;
          });
        },
        child: Image(
          image: AssetImage(asset),
          color: sugarAmount == sugar ? Colors.brown : Colors.grey,
        ));
  }

  GestureDetector additions(String asset, int additions) {
    return GestureDetector(
        onTap: () {
          setState(() {
            addition = additions;
          });
        },
        child: Image(
          height: 25,
          image: AssetImage(asset),
          color: (addition == additions) ? Colors.brown : Colors.grey,
        ));
  }
}
