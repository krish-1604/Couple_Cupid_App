import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DatingAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Dating App',
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Implement settings action
            },
            icon: Icon(Icons.settings, color: Colors.red),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Color(0xff000000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Find Your Match',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return _buildProfileCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile_image.jpg'),
          ),
          SizedBox(height: 10),
          Text(
            'John Doe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '27 • New York',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Implement like functionality
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Implement dislike functionality
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Implement super like functionality
                },
                icon: FaIcon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: DatingAppHomePage()));
}
