import 'package:flutter/material.dart';
import 'Foodmenu.dart';

//build Widget
class Myappi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my App",
      home: Myhomepage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class Myhomepage extends StatefulWidget {
  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("หอยทอด", "150", "assets/images/image1.jpg"),
    FoodMenu("ต้มยำกุ้ง", "200", "assets/images/image3.jpg"),
    FoodMenu("มาม่า", "59", "assets/images/image2.jpg")
  ];

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูที่ต้องการเลย"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(food.name),
                subtitle: Text(
                  "ราคา" + food.price + "บาท",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {
                  print("You choose the menu = " + food.name);
                },
              );
            }));
  }
}
