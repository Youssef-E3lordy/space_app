import 'package:flutter/material.dart';
import 'package:space_app/Screens/info_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int index = 1;
  Map<int, String> planets = {
    1: "Earth",
    2: "Mars",
    3: "Saturn",
    4: "Jupiter",
    5: "Mercury",
    6: "Uranus",
    7: "Neptune",
    8: "Venus",
    9: "Sun",
  };
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/half_earth 2.png",

                color: Color(0xff0E0E0E).withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  "Exploer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, right: 100),
                child: Text(
                  "Which planet\nwould you like to explore?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            width: 342,
            height: 339,
            child: Image.asset("assets/images/planet$index.png"),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      index--;
                      if (index < 1) {
                        index = 9;
                      }
                      setState(() {});
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xffEE403D),
                      iconColor: Colors.white,
                      padding: EdgeInsets.all(16),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "${planets[index]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      index++;
                      if (index > 9) {
                        index = 1;
                      }
                      setState(() {});
                    },
                    child: Icon(Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xffEE403D),
                      iconColor: Colors.white,
                      padding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Positioned(
              bottom: 20,
              left: 20,
              right: 20,

              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoScreen(index: index)),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Exploer ${planets[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEE403D),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
