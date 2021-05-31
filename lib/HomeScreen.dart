import 'package:flutter/material.dart';
import 'package:project/Home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Home(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width / 1.1,
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromRGBO(17, 147, 123, 1),
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                  size: size.width / 12.9,
                ),
              ),
            ),
            SizedBox(
              height: size.height / 80,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(17, 147, 123, 1),
              child: Container(
                height: size.height / 12,
                width: size.width / 1.12,
                child: Row(
                  children: [
                    navigationBarItems(size, "Home", "assets/home.png"),
                    navigationBarItems(size, "Order", "assets/cart.png"),
                    navigationBarItems(size, "Account", "assets/acc.png"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navigationBarItems(Size size, String title, String imagePath) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height / 30,
            width: size.height / 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
