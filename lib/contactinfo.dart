import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Contact Info",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
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
              SizedBox(height: 10),
              Text("Name"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Birthdate"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Gender"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Email"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Phone Number"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Address"),
              TextFormField(
                decoration: InputDecoration(
                    suffixText: "Change",
                    suffixStyle: TextStyle(color: Colors.green),
                    hintText: "-"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
