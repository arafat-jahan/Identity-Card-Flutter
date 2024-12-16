import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MI Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MiCard(),
    );
  }
}

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            const SizedBox(height: 20), // Spacing between avatar and name

            // Name Text
            const Text(
              "Arafat Jahan",
              style: TextStyle(
                fontFamily: "PermanentMarker",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),

            // Role Text
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontFamily: "Comfortaa",
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 25), // Space between role and divider

            // Divider
            SizedBox(
              width: 150,
              child: Divider(
                thickness: 1,
                color: Colors.teal.shade100,
              ),
            ),
            const SizedBox(height: 25),

            // Phone Card
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal.shade800,
                  size: 30,
                ),
                title: Text(
                  "+01402148195",
                  style: TextStyle(
                    color: Colors.teal.shade800,
                    fontFamily: "Comfortaa",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Email Card
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.alternate_email,
                  color: Colors.teal.shade800,
                  size: 30,
                ),
                title: Text(
                  "arafatjahan.hira@gmail.com",
                  style: TextStyle(
                    color: Colors.teal.shade800,
                    fontFamily: "Comfortaa",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
