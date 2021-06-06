import 'package:flutter/material.dart';
import 'package:project/BookTable.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isScrollable = false;

  final List<BannerData> data = [
    BannerData(
        title: "Don't Worry!",
        content: "We are here with the \nbest desert in town",
        imageUrl: "assets/donut.jpeg"),
    BannerData(
        title: "Whopper!",
        content: "We are here with\nthe best in town",
        imageUrl: "assets/donut.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: size.height / 15,
            width: size.width,
            //color: Color.fromRGBO(17, 147, 123, 1),
            child: Row(
              children: [
                SizedBox(
                  width: size.width / 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height / 80,
                    ),
                    Container(
                      width: size.width / 1.2,
                      child: Text(
                        "Hello Ankit",
                        style: TextStyle(
                          //color: Colors.white,
                          fontSize: size.width / 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 1.2,
                      child: Text(
                        "New Delhi, MG road",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: size.width / 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                // Container(
                //   height: size.height / 20,
                //   width: size.height / 20,
                //   child: Icon(
                //     Icons.local_pizza,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            height: size.height / 17,
            width: size.width / 1.1,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for a food and restaurant",
                hintStyle: TextStyle(color: Colors.grey[600]),
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
          Container(
            height: size.height / 1.24,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.height / 80,
                  ),
                  banner(size),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  content(size, context),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  restaurentList(size),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget restaurentList(Size size) {
    return Flexible(
        // height: size.height / 1.25,
        // width: size.width / 1.05,
        child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 40,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.white,
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height / 6,
                    width: size.width / 1.05,
                    child: Row(
                      children: [
                        Container(
                          height: size.height / 6.5,
                          width: size.width / 3.1,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: size.width / 80,
                                  ),
                                  Text(
                                    "Restaurant Name",
                                    style: TextStyle(
                                      fontSize: size.width / 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width / 10,
                                  ),
                                  Icon(Icons.bookmark_border)
                                ],
                              ),
                              SizedBox(
                                height: size.height / 200,
                              ),
                              Container(
                                width: size.width / 2,
                                child: Text(
                                  "Recipe - Brief Details",
                                  style: TextStyle(
                                    fontSize: size.width / 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 200,
                              ),
                              Container(
                                width: size.width / 1.9,
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                        fontSize: size.width / 26,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: size.width / 2.3,
                                    child: Row(
                                      children: [
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
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      marker(size, Colors.green),
                                      SizedBox(
                                        width: size.width / 80,
                                      ),
                                      marker(size, Colors.red),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }

  Widget content(Size size, BuildContext context) {
    return Container(
      height: size.height / 4.5,
      width: size.width / 1.05,
      child: Row(
        children: [
          Material(
            elevation: 3,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: size.height / 4.5,
              width: size.width / 2.35,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Container(
                    height: size.height / 9,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/parcel.jpeg"),
                      ),
                    ),
                  ),
                  Text(
                    "Parcel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width / 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width / 80,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width / 40,
                          ),
                          Container(
                            height: size.height / 10,
                            width: size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/pre.png"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width / 50,
                          ),
                          Column(
                            children: [
                              Container(
                                height: size.height / 20,
                                width: size.width / 4,
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Pre-Order",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width / 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height / 20,
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "in less than a minute",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: size.width / 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width / 80,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BookTable(),
                      ),
                    ),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width / 40,
                            ),
                            Container(
                              height: size.height / 10,
                              width: size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/table.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width / 50,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: size.height / 20,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Book Table",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.width / 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: size.height / 20,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "in a few clicks",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: size.width / 40,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget banner(Size size) {
    return Container(
      width: size.width,
      alignment: Alignment.centerRight,
      child: Container(
        height: size.height / 6.2,
        width: size.width / 1.03,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: size.height / 6.2,
                  width: size.width / 1.45,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(203, 107, 109, 1),
                        Color.fromRGBO(249, 154, 124, 1)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width / 35,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height / 60,
                          ),
                          Container(
                            width: size.width / 2.2,
                            child: Text(
                              data[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 18,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 2.2,
                            child: Text(
                              data[index].content,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 32,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: size.height / 20,
                          // ),
                          Container(
                            height: size.height / 18,
                            width: size.width / 2.2,
                            child: Row(
                              children: [
                                Text(
                                  "Order Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 60,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: size.width / 25,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: size.width / 26,
                      ),
                      Container(
                        height: size.height / 10,
                        width: size.width / 6,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage(data[index].imageUrl),
                            //fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget marker(Size size, Color color) {
    return Container(
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
    );
  }
}

class BannerData {
  final String title, content, imageUrl;
  BannerData({this.content, this.title, this.imageUrl});
}
