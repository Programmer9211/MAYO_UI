import 'package:flutter/material.dart';

class BookTable extends StatefulWidget {
  @override
  _BookTableState createState() => _BookTableState();
}

class _BookTableState extends State<BookTable> {
  final List<String> namesRecomandationList = [
    "Starter",
    "Chinese",
    "South Indian",
    "Desert"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageAndDiscription(size),
              hotelSearchAndRecomendations(size),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height / 12,
          width: size.width,
          color: Color.fromRGBO(17, 147, 123, 1),
          child: Row(
            children: [
              SizedBox(
                width: size.width / 20,
              ),
              Icon(
                Icons.online_prediction_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: size.width / 30,
              ),
              Text(
                "Rs. 500",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width / 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                width: size.width / 3.2,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Checkout",
                        style: TextStyle(
                          color: Color.fromRGBO(17, 147, 123, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: size.width / 24,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(17, 147, 123, 1),
                        size: size.width / 20,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget imageAndDiscription(Size size) {
    return Stack(
      children: [
        Container(
          height: size.height / 2.7,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(57, 193, 169, 1),
                Color.fromRGBO(21, 158, 130, 1)
              ],
            ),
          ),
          alignment: Alignment.topLeft,
          child: Container(
            height: size.height / 12,
            width: size.width / 5,
            alignment: Alignment.center,
            child: Container(
              height: size.height / 25,
              width: size.width / 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_back_ios,
                size: size.width / 20,
                color: Color.fromRGBO(57, 193, 169, 1),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          height: size.height / 7,
          width: size.width,
          child: Container(
            height: size.height / 9,
            width: size.width,
            color: Colors.white,
          ),
        ),
        Positioned(
          height: size.height / 5,
          width: size.width / 1.1,
          bottom: 12,
          right: 16,
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
            color: Colors.white,
            child: Container(
              height: size.height / 5,
              width: size.width / 1.1,
              child: Column(
                children: [
                  Container(
                    height: size.height / 6.68,
                    width: size.width / 1.1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height / 80,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width / 20,
                            ),
                            Container(
                              width: size.width / 1.34,
                              child: Text(
                                "Restaurant Name",
                                style: TextStyle(
                                  fontSize: size.width / 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              height: size.height / 25,
                              width: size.height / 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.grey[600],
                                size: size.width / 19,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: size.width / 1.23,
                          child: Text(
                            "Meals-Brief Details",
                            style: TextStyle(
                              fontSize: size.width / 23,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 60,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width / 30,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "4.2",
                              style: TextStyle(
                                fontSize: size.width / 26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: size.width / 20,
                            ),
                            Icon(
                              Icons.verified,
                              color: Colors.green,
                              size: size.width / 20,
                            ),
                            Text(
                              "Verified",
                              style: TextStyle(
                                fontSize: size.width / 26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: size.width / 2.45,
                            ),
                            Container(
                              height: size.height / 25,
                              width: size.height / 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: Icon(
                                Icons.call,
                                color: Colors.grey[600],
                                size: size.width / 19,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 20,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Color.fromRGBO(207, 234, 229, 1),
                            child: Text(
                              'PreOrder',
                              style: TextStyle(
                                fontSize: size.width / 22,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Color.fromRGBO(15, 147, 123, 1),
                            child: Text(
                              'Parcel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width / 22,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            color: Color.fromRGBO(207, 234, 229, 1),
                            child: Text(
                              'Scan Order',
                              style: TextStyle(
                                fontSize: size.width / 22,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget hotelSearchAndRecomendations(Size size) {
    return Container(
      height: size.height / 1.7,
      width: size.width,
      child: Column(
        children: [
          Material(
            elevation: 3,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: size.height / 16,
              width: size.width / 1.05,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 20,
                  ),
                  Text(
                    "Book a Table",
                    style: TextStyle(
                      fontSize: size.width / 22,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height / 80,
          ),
          Material(
            elevation: 3,
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Container(
              height: size.height / 17,
              width: size.width / 1.05,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 25,
                  ),
                  category(size, Colors.green, "Veg"),
                  SizedBox(
                    width: size.width / 18,
                  ),
                  category(size, Colors.red, "Non-Veg"),
                  SizedBox(
                    width: size.width / 18,
                  ),
                  category(size, Colors.yellow, "Egg"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.width / 500,
          ),
          Material(
            elevation: 3,
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            child: Container(
              height: size.height / 17,
              width: size.width / 1.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: namesRecomandationList.length,
                itemBuilder: (context, index) {
                  return namesRecomandation(
                      size, namesRecomandationList[index]);
                },
              ),
            ),
          ),
          SizedBox(
            height: size.height / 100,
          ),
          Container(
            height: size.height / 20,
            width: size.width / 1.05,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "Search for a food",
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  height: size.width / 1000,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: size.height / 100,
          ),
          Material(
            elevation: 2,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: size.height / 18,
              width: size.width / 1.05,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 20,
                  ),
                  Text(
                    "Starter",
                    style: TextStyle(
                      fontSize: size.width / 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 1.6,
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            height: size.height / 4,
            width: size.width,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return mealItems(size, index == 1 ? true : false);
                }),
          ),
        ],
      ),
    );
  }

  Widget category(Size size, Color color, String title) {
    return Row(
      children: [
        Container(
          height: size.height / 45,
          width: size.height / 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: color,
            ),
          ),
          child: Container(
            height: size.height / 65,
            width: size.height / 65,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
        ),
        SizedBox(
          width: size.width / 100,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: size.width / 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: size.width / 90,
        ),
        switchs(size, true),
      ],
    );
  }

  Widget namesRecomandation(Size size, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: size.width / 32,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget mealItems(Size size, bool isAdded) {
    return Container(
      height: size.height / 8,
      width: size.width,
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 3,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: size.height / 9,
          width: size.width / 1.05,
          child: Row(
            children: [
              SizedBox(
                width: size.width / 40,
              ),
              Container(
                height: size.height / 10.2,
                width: size.width / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(57, 193, 169, 1),
                      Color.fromRGBO(21, 158, 130, 1)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.width / 50,
                  ),
                  Text(
                    "Meal Name",
                    style: TextStyle(
                      fontSize: size.width / 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Meal Description",
                    style: TextStyle(
                      fontSize: size.width / 28,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 150,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4.2",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: size.width / 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.width / 50,
                  ),
                  isAdded
                      ? Container(
                          height: size.height / 20,
                          width: size.width / 4.8,
                          child: Row(
                            children: [
                              Container(
                                height: size.height / 30,
                                width: size.height / 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(57, 193, 169, 1),
                                ),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "__",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width / 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: size.width / 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height / 30,
                                width: size.height / 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(57, 193, 169, 1),
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: size.width / 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          height: size.height / 20,
                          width: size.width / 4.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 193, 169, 1),
                                Color.fromRGBO(21, 158, 130, 1)
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: size.width / 20,
                              ),
                              SizedBox(
                                width: size.width / 100,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                  SizedBox(
                    height: size.width / 40,
                  ),
                  Text(
                    "Rs. 500",
                    style: TextStyle(
                      fontSize: size.width / 26,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget switchs(Size size, bool isEnabled) {
    return Container(
      height: size.height / 50,
      width: size.width / 15,
      alignment: isEnabled ? Alignment.centerRight : Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isEnabled ? Color.fromRGBO(57, 193, 169, 1) : Colors.white,
        border: Border.all(
          width: 1,
          color: isEnabled ? Color.fromRGBO(57, 193, 169, 1) : Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        child: Container(
          height: size.height / 110,
          width: size.height / 110,
          decoration: BoxDecoration(
            color: isEnabled ? Colors.white : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
