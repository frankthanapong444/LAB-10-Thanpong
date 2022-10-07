import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/login_signup_btn.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/addnumber/addnum.dart';
import 'package:flutter_auth/calculator/calculate.dart';
import 'package:flutter_auth/foodmenu/foodmenu.dart';
import 'package:flutter_auth/LAb/lab.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRANKSUPERSHOP"),
        backgroundColor: Color.fromARGB(255, 251, 172, 0),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_outlined))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return addNum();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.add_to_queue_rounded,
                      size: 70,
                      color: Colors.amber,
                    ),
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Cal();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.calculate,
                      size: 70,
                      color: Colors.amber,
                    ),
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Myappi();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.food_bank_outlined,
                      size: 70,
                      color: Colors.amber,
                    ),
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Menu();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.food_bank,
                      size: 70,
                      color: Colors.amber,
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
