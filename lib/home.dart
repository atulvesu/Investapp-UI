import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Welcome, Jessica.",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your total asset portfolio",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "N203,935",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Invest Now",
                          style: TextStyle(color: Colors.green),
                        )),
                  ],
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Plans",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              Text(
                "See All ->",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Image.asset('images/gold.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('images/silver.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('images/gold.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('images/silver.png'),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Investment Guide",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Basic type of investments"),
                        Text(
                            "This is how you set your foor for 2020 Stock market recession. What's next, This is how you set your foor for 2020",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(),
                            maxLines: 2),
                      ],
                    ),
                  ),
                  Image.asset('images/Ellipse 740.png')
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Divider(
                  height: 1,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How much can you start with ",
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                            "What do you like to see? it's a very diffrent market from 2018, The way, What do you like to see? it's a very diffrent market from 2018, The way",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(),
                            maxLines: 2),
                      ],
                    ),
                  ),
                  Image.asset('images/Ellipse 740 (1).png')
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
