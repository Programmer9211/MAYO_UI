import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/LoginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    pageSlider();
  }

  void pageSlider() {
    _timer = Timer.periodic(Duration(seconds: 2), (i) {
      if (_currentIndex != 2) {
        _controller.animateToPage(_currentIndex + 1,
            duration: Duration(milliseconds: 300), curve: Curves.ease);
      } else {
        setState(() {
          _currentIndex = 0;
        });
        _controller.animateToPage(0,
            duration: Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          top(size),
          bottom(size, context),
        ],
      ),
    );
  }

  Widget top(Size size) {
    return Container(
      height: size.height / 1.4,
      width: size.width,
      color: Color.fromRGBO(33, 150, 82, 1),
      child: Column(
        children: [
          SizedBox(
            height: size.height / 15,
          ),
          Container(
            width: size.width,
            alignment: Alignment.center,
            child: Text(
              "MAYO",
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width / 12.9,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Container(
            height: size.height / 2.3,
            width: size.width / 1.2,
            child: PageView(
              controller: _controller,
              onPageChanged: (val) {
                setState(() {
                  _currentIndex = val;
                });
              },
              children: [
                pageViewItems(
                  size,
                  "TakeAway",
                  "Why to get off your car for food?? just order from MAYO and get served on your vehicle",
                  "assets/1.jpeg",
                ),
                pageViewItems(
                  size,
                  "Scan and Order",
                  "Experience a touch-less dining!! just order from MAYO and use E-Menu to order",
                  "assets/2.jpeg",
                ),
                pageViewItems(
                  size,
                  "pre-order",
                  "craving for your food and still waiting?? just pre-order from MAYO and get served immediately after you reach",
                  "assets/3.jpeg",
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 20,
            width: size.width / 7.5,
            child: Row(
              children: [
                for (int i = 0; i <= 2; i++)
                  buildIndicator(size, _currentIndex == i ? true : false),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget pageViewItems(
      Size size, String title, String content, String imageURL) {
    return Container(
      height: size.height / 2.3,
      width: size.width / 1.2,
      child: Column(
        children: [
          Container(
            height: size.height / 3.7,
            width: size.width / 1.5,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageURL),
                //fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: size.width / 30),
          Text(
            title,
            style: TextStyle(
              fontSize: size.width / 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.width / 40),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width / 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(Size size, bool toShow) {
    return Container(
      height: size.height / 50,
      width: size.height / 50,
      alignment: Alignment.center,
      child: Container(
        height: toShow ? size.height / 60 : size.height / 80,
        width: toShow ? size.height / 60 : size.height / 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget bottom(Size size, BuildContext context) {
    return Container(
      height: size.height / 3.5,
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: size.height / 30,
          ),
          Container(
            width: size.width / 1.2,
            child: Text(
              "Food For You!",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width / 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          customButton(size, true, context),
          SizedBox(
            height: size.height / 40,
          ),
          customButton(size, false, context),
        ],
      ),
    );
  }

  Widget customButton(Size size, bool isLogin, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => LoginScreen())),
      child: Container(
        height: size.height / 17,
        width: size.width / 1.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isLogin ? Color.fromRGBO(50, 215, 76, 1) : Colors.white,
          border: Border.all(
            width: 1,
            color: isLogin ? Colors.white : Color.fromRGBO(50, 215, 76, 1),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          isLogin ? "Login" : "SignUp",
          style: TextStyle(
            color: isLogin ? Colors.white : Color.fromRGBO(50, 215, 76, 1),
            fontSize: size.width / 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
