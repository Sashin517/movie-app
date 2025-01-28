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
        title: Text(
          'Book World',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20), // Adds padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Books',
              style: TextStyle(
                fontSize: 24,
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16), // Space below the title
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              child: Row(
                children: [
                  Book(
                    title: 'Thilaka Ha Thilaka',
                    author: 'Minas Publishers',
                    imagePath: 'assets/Thilaka ha Thilaka-1000x1000.jpg',
                    price: 'Rs500',
                  ),
                  SizedBox(width: 16), // Space between books
                  Book(
                    title: 'Another Book',
                    author: 'Author Name',
                    imagePath: 'assets/sample.jpg',
                    price: 'Rs750',
                  ),
                  SizedBox(width: 16),
                  Book(
                    title: 'Third Book',
                    author: 'Another Author',
                    imagePath: 'assets/sample2.jpg',
                    price: 'Rs1000',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Book extends StatelessWidget {
  final String title; // Book title
  final String author; // Author name
  final String imagePath; // Image path
  final String price; // Price

  Book({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[50], // Background color for the widget
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      width: 200,
      padding: EdgeInsets.only(top: 8, bottom: 8), // Padding for top and bottom
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Aligns content horizontally
        children: [
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red[900],
                ),
              ),
              Text(
                author,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red[900],
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Adds space between text and image
         Container(
          height: 267,
          width: 200,
          child:Image.asset(
            imagePath,
            height: 267,
            width: 200,
            fit: BoxFit.cover,          
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between price and button
              children: [
                Text(
                  price.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Define button action
                    print('Add to cart button pressed!');
                  },
                  child: Text('Add to cart'),
                ),
              ],
            )
          ) // Adds space between image and price/button row
        ],
      ),
    );
  }
}
