import 'package:flutter/material.dart';
import 'package:space_app/Screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image(image: AssetImage("assets/images/login_background.png")),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Explore\nThe\nUniverse",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 48,
              ),
            ),
          ),
          Positioned(
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
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Exploer",
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
        ],
      ),
    );
  }
}
