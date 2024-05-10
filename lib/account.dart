import 'package:flutter/material.dart';
import 'package:investapp/contactinfo.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD3D2D2),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      fit: BoxFit.cover,
                      'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fEV4cGVydHxlbnwwfHwwfHx8MA%3D%3D',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ),
              Text("Jonas Macroni"),
              Text("Expert"),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.work),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Contact Info")
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ContactInfoScreen(),
                                  ));
                            },
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.money),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Source of Funding Info")
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.home_filled),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Bank Account Info")
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.file_copy_outlined),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Document Info")
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Settings")
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
