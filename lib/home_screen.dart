import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200], // Light grey background
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(
                    alpha: 0.5,
                  ), // Fixed shadow opacity
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Inner padding
              child: Row(
                children: [
                  // Left Side: Circular Profile Picture
                  CircleAvatar(
                    radius: 40, // Size of the avatar
                    backgroundImage: NetworkImage(
                      "https://www.creativefabrica.com/wp-content/uploads/2022/03/09/Woman-Icon-Teen-Profile-Graphics-26722130-2-580x387.png", // Replace with your image URL
                    ),
                    // OR use a placeholder color
                    // backgroundColor: Colors.blue,
                    // child: Text("JD", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 16), // Spacing between left and right
                  // Right Side: Name (Column)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Optional: Add more widgets (e.g., subtitle)
                        Text(
                          "Software Developer",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Live the life with Favourite Music Beats",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
