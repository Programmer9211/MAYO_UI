import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Color.fromRGBO(22, 22, 22, 1),
      body: Column(
        children: [
          Container(
              height: size.height / 3.1,
              width: size.width,
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 15,
                  ),
                  Text(
                    "MAYO",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2,
                      fontSize: size.width / 12.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  Container(
                    height: size.height / 6,
                    width: size.height / 5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/burg.png"),
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: size.height / 60,
          ),
          Container(
            width: size.width / 1.2,
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width / 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 30,
          ),
          fields(size, "Email", Icons.email),
          SizedBox(
            height: size.height / 60,
          ),
          fields(size, "Password", Icons.lock),
          Container(
            width: size.width / 1.15,
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(
            height: size.height / 40,
          ),
          customButton(size),
          SizedBox(
            height: size.height / 30,
          ),
          Container(
            width: size.width / 1.6,
            alignment: Alignment.center,
            child: Text(
              "By Login, You agree to MAYO's \n Terms of Use and Privacy Policy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width / 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          signInOptions(size),
          SizedBox(
            height: size.height / 10,
          ),
          Container(
            width: size.width / 1.2,
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                  text: "You Dont't have an account.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width / 26,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up?",
                      style: TextStyle(
                        color: Color.fromRGBO(50, 215, 76, 1),
                        fontSize: size.width / 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget fields(Size size, String text, IconData icon) {
    return Container(
      height: size.height / 16,
      width: size.width / 1.15,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: text,
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon: Icon(icon, color: Colors.white),
          fillColor: Colors.grey[700],
          //fillColor: Color.fromRGBO(40, 40, 40, 1),
          filled: true,
        ),
      ),
    );
  }

  Widget customButton(Size size) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: size.height / 17,
        width: size.width / 1.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(50, 215, 76, 1),
        ),
        alignment: Alignment.center,
        child: Text(
          "Continue",
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width / 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget signInOptions(Size size) {
    return Container(
      height: size.height / 18,
      width: size.width / 1.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height / 20,
            width: size.height / 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/google.png"),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 10,
          ),
          Container(
            height: size.height / 20,
            width: size.height / 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/facebook.png"),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 10,
          ),
          Container(
            height: size.height / 20,
            width: size.height / 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/twitter.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
