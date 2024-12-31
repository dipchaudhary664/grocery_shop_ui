import 'package:flutter/material.dart';
import 'package:grocery_shop/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0, left: 20.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/hand.png",
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Hey Deep,",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Eat fresh fruits and try \nto be healthy.",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "images/user.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 5.0,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Grocery...",
                      suffixIcon: Icon(Icons.search_outlined)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Selling",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 245,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 20.0),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffe08e),
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Orange",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\฿115 each",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "images/orange.png",
                              height: 130,
                              width: 130,
                              fit: BoxFit.contain,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Details()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(left: 103.0),
                              decoration: BoxDecoration(
                                  color: Color(0xffffeab5),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30))),
                              child: Icon(
                                Icons.add,
                                color: Colors.orange,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffe3e5),
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apple",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\฿99 each",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "images/apple.png",
                              height: 130,
                              width: 130,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 103.0),
                            decoration: BoxDecoration(
                                color: Color(0xffffeeee5),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30))),
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 219, 152),
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pineapple",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\฿120 each",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "images/pineapple.png",
                              height: 130,
                              width: 130,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 103.0),
                            decoration: BoxDecoration(
                                color: Color(0xffffeab5),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30))),
                            child: Icon(
                              Icons.add,
                              color: Colors.orange,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Near You",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "28+ Shops",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/grocery01.jpg",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Green Grocers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "08:00 - 10:00",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            " 4.9 | ",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            "1.2 km",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/grocery02.jpg",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Fresh Mart.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "08:00 - 10:00",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            " 4.5 | ",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            "1.6 km",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/grocery03.jpg",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Savvy Supplies.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "08:00 - 10:00",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            " 5 | ",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            "1.9 km",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
