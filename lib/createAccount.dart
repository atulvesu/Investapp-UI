import 'package:flutter/material.dart';

import 'package:investapp/important.dart';

class createAccontScreen extends StatefulWidget {
  const createAccontScreen({super.key});

  @override
  State<createAccontScreen> createState() => _createAccontScreenState();
}

class _createAccontScreenState extends State<createAccontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Create an Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const Text(
                "Invest and double your income now",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Full name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Email address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1))),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        print("Pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => importantScreen(),
                            ));
                      },
                      child: const Center(
                          child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const Text(
                "Already have an account?",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
