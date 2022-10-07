import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/main.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _menuState();
}

int foodQuantity = 0;
List<List<dynamic>> promotion = [
  [
    25,
    488 * 25 / 100,
  ],
  [
    10,
    285 * 10 / 100,
  ],
  [17, 285 * 17 / 100],
  [
    27,
    359 * 27 / 100,
  ],
  [
    17,
    399 * 17 / 100,
  ],
  [19, 239 * 17 / 100],
  [
    19,
    169 * 19 / 100,
  ]
];

class _menuState extends State<Menu> {
  List<List<dynamic>> menuburger = [
    [
      "assets/images/set1.jpg",
      "ชุดเบอร์เกอร์ซอสเห็ดและชีส + เฟรนช์ฟรายส์",
      488,
    ],
    ["assets/images/set2.jpg", "เบอร์เกอร์ไก่ชิ้นยาววววววว", 285],
    [
      "assets/images/set3.jpg",
      "แพลนต์เบส วอปเปอร์® จูเนียร์ + แพลนต์เบส วอปเปอร์® จูเนียร์",
      285,
    ],
    [
      "assets/images/set4.jpg",
      "ชุดสุดคุ้ม แองกัส เอ็กซ์ที สเต็กเฮาส์",
      359,
    ],
    [
      "assets/images/set5.jpg",
      "ชุดสุดคุ้ม แองกัส เอ็กซ์ที แบล็คทรัฟเฟิล",
      399,
    ],
    [
      "assets/images/set6.jpg",
      "ชุดสุดคุ้ม แพลนต์เบส วอปเปอร์® จูเนียร์",
      239,
    ],
    [
      "assets/images/set7.jpg",
      "เบอร์เกอร์หมูย่าง บาร์บีคิว ชีส + เบอร์เกอร์หมูย่าง บาร์บีคิว ชีส",
      169,
    ]
  ];
  void addfoodQuantity() {
    setState(() {
      foodQuantity++;

      // return FrankBurger('$foodQuantity');
    });
  }

  void deletefoodQuantity() {
    setState(() {
      if (foodQuantity == 0) {
        foodQuantity = 0;
      } else {
        foodQuantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuburger.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(children: [
              Row(
                children: [
                  Image.asset(
                    ("${menuburger[index][0]}"),
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${menuburger[index][1]}",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(137, 0, 0, 0)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "ราคา ${menuburger[index][2]} ฿ ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 230, 0, 0),
                            ),
                          ),
                          Text(
                            "ราคา ${menuburger[index][2] - promotion[index][1]} ฿ ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 30, 254, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Chip(
                  label: Text("ส่วนลด ${promotion[index][0]} %"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.amber[700],
                  onPressed: () {
                    setState(() {
                      foodQuantity++;
                    });
                    // Navigator.pushNamed(context, '/lab8-page',
                    //     arguments: "add");
                  },
                  child: const Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "ur order: "
                  '$foodQuantity',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
