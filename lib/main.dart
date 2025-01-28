import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie World'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red[900],
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/237/200/300"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Book(),
          Book()
        ],
      ),
    );
  }
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Aligns content horizontally
      children: [
        SizedBox(height: 10),
        Center(
          child: Column(
            children: [
              Text(
                'Book',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                ),
              ),
              Text(
                'Author',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red[900],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10), // Adds space between sections
        Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/237/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20), // Adds space between sections
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the row horizontally
          children: [
            Text(
              'Price: \$20',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10), // Adds space between the text and button
            ElevatedButton(
              onPressed: () {
                // Define button action
                print('Buy button pressed!');
              },
              child: Text('Buy'),
            ),
          ],
        ),
      ],
    );
  }
}


