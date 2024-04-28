import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/OIG3-removebg-preview.png',
                  width: 250,
                  height: 250,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Navigation');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.green, // Button text color
              backgroundColor: Colors.white, // Button background color
            ),
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.green, // Button text color
              ),
            ),
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
