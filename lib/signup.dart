import 'package:flutter/material.dart';
import 'package:investapp/createAccount.dart';

// ignore: camel_case_types
class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

// ignore: camel_case_types
class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('images/splash.png')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Stay on top of your",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "finance with us.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("We are your new financial Advistors"),
            const Text("to recommed the best investments for"),
            const Text("you"),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const createAccontScreen()));
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
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.green),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
