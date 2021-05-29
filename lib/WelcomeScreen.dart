import 'package:flutter/material.dart';
import 'package:project/LoginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

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
      decoration: BoxDecoration(
        //color: Color.fromRGBO(22, 22, 22, 1),
        image: DecorationImage(
          image: AssetImage("assets/curve.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height / 15,
          ),
          Container(
            width: size.width,
            alignment: Alignment.center,
            child: Text(
              "MOYO",
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width / 12.9,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom(Size size, BuildContext context) {
    return Container(
      height: size.height / 3.5,
      width: size.width,
      color: Color.fromRGBO(22, 22, 22, 1),
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
                color: Colors.white,
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
          color: isLogin
              ? Color.fromRGBO(50, 215, 76, 1)
              : Color.fromRGBO(22, 22, 22, 1),
          border: Border.all(
            width: 1,
            color: isLogin
                ? Color.fromRGBO(22, 22, 22, 1)
                : Color.fromRGBO(50, 215, 76, 1),
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
}
