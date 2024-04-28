import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Primary color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Go back to the landing page
                  },
                ),
                Image.asset(
                  'assets/OIG4-removebg-preview.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(width: 50),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to Doc Finder',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Find the best doctors for your appointments!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to the doctor space page
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Button background color
                  backgroundColor: Colors.green, // Button text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  'Doctor Space',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the client space page
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pushNamed(context, 'auth');
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Button background color
                  backgroundColor: Colors.grey, // Button text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  'Client Space',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                color: Colors.white,
                size: 10,
              ),
              SizedBox(width: 5),
              Icon(
                Icons.circle_outlined,
                color: Colors.white,
                size: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
