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
        title: Row(children:[
          IconButton(
                  onPressed: () {
                    // Define button action
                    print('Menu button pressed!');
                  },                  
                  icon: Icon(
                    Icons.menu,
                    size: 34,
                    ),
                ),
           // Icon
          SizedBox(width: 20), // Space between icon and text
          Text(
            'Book World',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        //centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        color: Colors.red[50], // Adds padding
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Books',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Best sellers of the week',
              style: TextStyle(
                fontSize: 18,
                color: Colors.red[900],
                //fontWeight: FontWeight.bold,
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
                    price: 'Rs. 500',
                  ),
                  SizedBox(width: 16), // Space between books
                  Book(
                    title: 'Dessert Flower',
                    author: 'Ranjith Kuruppu',
                    imagePath: 'assets/Dessert Flower.png',
                    price: 'Rs. 960',
                  ),
                  SizedBox(width: 16),
                  Book(
                    title: 'The Seven Moons of',
                    author: 'Another Author',
                    imagePath: 'assets/45.jpg',
                    price: 'Rs. 3000',
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
        color: Colors.purple[400], // Background color for the widget
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      width: 148,
      padding: EdgeInsets.only(top: 8, bottom: 8), // Padding for top and bottom
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Aligns content horizontally
        children: [
           Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        SizedBox(height: 8), // Adds space between text and image
         Container(
          height: 197,
          width: 148,
          child:Image.asset(
            imagePath,
            //height: 267,
            //width: 148,
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
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Add to cart button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2), // Adjust padding
                    textStyle: TextStyle(fontSize: 10), // Small font size
                  ),
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
