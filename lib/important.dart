import 'package:flutter/material.dart';
import 'package:investapp/Notification.dart';
import 'package:investapp/account.dart';
import 'package:investapp/home.dart';
import 'package:investapp/product.dart';
import 'package:investapp/transaction.dart';

class importantScreen extends StatefulWidget {
  const importantScreen({super.key});

  @override
  State<importantScreen> createState() => _importantScreenState();
}

class _importantScreenState extends State<importantScreen> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const homeScreen(),
    const productScreen(),
    const transactionScreen(),
    const accountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ));
                  },
                  icon: Icon(Icons.notification_add))),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [Text("Profile Image Here")],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: myIndex,
          onTap: (Index) {
            setState(() {
              myIndex = Index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ac_unit,
                ),
                label: "Transaction"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Account"),
          ]),
      body: widgetList[myIndex],
    );
  }
}
