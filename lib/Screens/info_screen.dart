import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final int index;
  Map<int, Map<String, dynamic>> planets = {
    1: {
      "Title": "Earth: Our Blue Marble",
      "About":
          "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      "Distance from Sun (km)": "149598026 million km",
      "Length of Day (hours)": "23.93",
      "Orbital Period (Earth years)": "1",
      "Radius (km)": "6371 km",
      "Mass (kg)": "5.972 × 10²⁴",
      "Gravity (m/s²)": "9.81",
      "Surface Area (km²)": "5.10 × 10⁸",
    },
    2: {
      "Title": "Mars: The Red Planet",
      "About":
          "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      "Distance from Sun (km)": "227943824 km",
      "Length of Day (hours)": "24.62",
      "Orbital Period (Earth years)": "1.88",
      "Radius (km)": "3389.5 km",
      "Mass (kg)": "6.39 × 10²³",
      "Gravity (m/s²)": "3.71",
      "Surface Area (km²)": "1.45 × 10⁸",
    },
    3: {
      "Title": "Saturn: The Ringed Planet",
      "About":
          "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      "Distance from Sun (km)": "1426666422 km",
      "Length of Day (hours)": "10.66",
      "Orbital Period (Earth years)": "29.46",
      "Radius (km)": "58232 km",
      "Mass (kg)": "5.683 × 10²⁶",
      "Gravity (m/s²)": "10.44",
      "Surface Area (km²)": "4.27 × 10¹⁵",
    },
    4: {
      "Title": "Jupiter: The Gas Giant",
      "About":
          "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      "Distance from Sun (km)": "778547669 km",
      "Length of Day (hours)": "9.92",
      "Orbital Period (Earth years)": "11.86",
      "Radius (km)": "69911 km",
      "Mass (kg)": "1.898 × 10²⁷",
      "Gravity (m/s²)": "24.79",
      "Surface Area (km²)": "6.21 × 10¹⁵",
    },
    5: {
      "Title": "Mercury: The Closest Planet",
      "About":
          "Mercury is the smallest planet in our Solar System and the one closest to the Sun. Despite its small size, Mercury has a dense, rocky body with a large metallic core, which makes it very heavy for its size. A year on Mercury (one orbit around the Sun) takes only 88 Earth days, making it the fastest planet in terms of revolution.",
      "Distance from Sun (km)": "57909227 km",
      "Length of Day (hours)": "1407.6",
      "Orbital Period (Earth years)": "0.24",
      "Radius (km)": "2439.7 km",
      "Mass (kg)": "3.301 × 10²³",
      "Gravity (m/s²)": "3.7",
      "Surface Area (km²)": "7.48 × 10⁷",
    },
    6: {
      "Title": "Uranus: The Tilted Planet",
      "About":
          "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      "Distance from Sun (km)": "2870990000 km",
      "Length of Day (hours)": "17.24",
      "Orbital Period (Earth years)": "84.01",
      "Radius (km)": "25362 km",
      "Mass (kg)": "8.681 × 10²⁵",
      "Gravity (m/s²)": "8.69",
      "Surface Area (km²)": "8.1 × 10¹⁵",
    },
    7: {
      "Title": "Neptune: The Distant World",
      "About":
          "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      "Distance from Sun (km)": "4498252900 km",
      "Length of Day (hours)": "16.11",
      "Orbital Period (Earth years)": "164.8",
      "Radius (km)": "24622 km",
      "Mass (kg)": "1.024 × 10²⁶",
      "Gravity (m/s²)": "11.15",
      "Surface Area (km²)": "7.65 × 10¹⁵",
    },
    8: {
      "Title": "Venus: Earth's Toxic Twin",
      "About":
          "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      "Distance from Sun (km)": "108209072 km",
      "Length of Day (hours)": "5832.2",
      "Orbital Period (Earth years)": "0.62",
      "Radius (km)": "6051.8 km",
      "Mass (kg)": "4.867 × 10²⁴",
      "Gravity (m/s²)": "8.87",
      "Surface Area (km²)": "4.60 × 10⁸",
    },
    9: {
      "Title": "The Sun: Our Solar System's Star",
      "About":
          "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      "Distance from Sun (km)": "0 km",
      "Length of Day (hours)": "0",
      "Orbital Period (Earth years)": "0.62",
      "Radius (km)": "695700 km",
      "Mass (kg)": "1.989 × 10³⁰",
      "Gravity (m/s²)": "274",
      "Surface Area (km²)": "6.09 × 10¹²",
    },
  };

  InfoScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final planetData = planets[index]!;
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/images/half_earth 2.png",

                  color: Color(0xff0E0E0E).withOpacity(0.4),
                  colorBlendMode: BlendMode.darken,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                    Padding(
                      padding: EdgeInsets.only(top: 60, left: 100),
                      child: Center(
                        child: Text(
                          "Exploer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 140, right: 70, left: 20),
                  child: Text(
                    "${planetData["Title"]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: 343,
                height: 343,
                child: Image.asset("assets/images/planet$index.png"),
              ),
            ), // planet
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${planetData["About"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ), //about

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Distance from Sun (km) :${planetData["Distance from Sun (km)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Distance from Sun (km)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Length of Day (hours) : ${planetData["Length of Day (hours)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Length of Day (hours)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Orbital Period (Earth years) :${planetData["Orbital Period (Earth years)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Orbital Period (Earth years)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Radius (km) :${planetData["Radius (km)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Radius (km) :
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Mass (kg) : ${planetData["Mass (kg)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Gravity (m/s²) :${planetData["Gravity (m/s²)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Gravity (m/s²) :
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Surface Area (km²) :${planetData["Surface Area (km²)"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ), //Surface Area (km²) :
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
