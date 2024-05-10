// home_screen.dart

import 'package:flutter/material.dart';
import 'package:servesurplus/services/authentication_service.dart';

class HomeScreen extends StatelessWidget {
  final AuthenticationService _authenticationService = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _authenticationService.signOut();
              // Navigate back to login screen upon logout
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Home Screen',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen (e.g., food listings)
                Navigator.pushNamed(context, '/food_listings');
              },
              child: Text('View Food Listings'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen (e.g., donation requests)
                Navigator.pushNamed(context, '/donation_requests');
              },
              child: Text('View Donation Requests'),
            ),
          ],
        ),
      ),
    );
  }
}
