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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                print('Menu button pressed!');
              },
              icon: Icon(
                Icons.menu,
                size: 34,
              ),
            ),
            SizedBox(width: 20), // Space between icon and text
            Text(
              'Book World',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        color: Colors.yellow[200],
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(  // Wrap Column to prevent overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookList(
                listTitle: 'Best Sellers',
                listDescription: 'Top selling books of the week',
              ),
              SizedBox(height: 16), // Space between book list and text
              BookList(
                listTitle: 'New Arrivals',
                listDescription: 'Latest books added to the store',
              ),
              SizedBox(height: 16), // Space between book list and text
              BookList(
                listTitle: 'Recommended',
                listDescription: 'Books recommended for you',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Book extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String price;

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
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(8),
      ),
      width: 148,
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title & Author Section with fixed height
          Container(
            height: 48, // Fixed height for text section
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 2, // Limit to 2 lines
                  overflow: TextOverflow.ellipsis, // Handle overflow
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.brown[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  author,
                  maxLines: 1, // Limit to 1 line
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.brown[900],
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
                    color: Colors.brown[900],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Add to cart button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2), // Adjust padding
                    textStyle: TextStyle(fontSize: 10), // Small font size
                    backgroundColor: Colors.green[800],
                    foregroundColor: Colors.white, // Text color
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

class BookList extends StatelessWidget {
  final String listTitle;
  final String listDescription;

  BookList({
    required this.listTitle,
    required this.listDescription,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listTitle,
            style: TextStyle(
              fontSize: 20,
              color: Colors.brown[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            listDescription,
            style: TextStyle(
              fontSize: 18,
              color: Colors.brown[900],
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Book(
                  title: 'The Seven Moons of',
                  author: 'Another Author',
                  imagePath: 'assets/images/45.jpg',
                  price: 'Rs. 3000',
                ),
                SizedBox(width: 16),
                Book(
                  title: 'Thilaka Ha Thilaka',
                  author: 'Minas Publishers',
                  imagePath: 'assets/images/Thilaka ha Thilaka-1000x1000.jpg',
                  price: 'Rs. 500',
                ),
                SizedBox(width: 16),
                Book(
                  title: 'Dessert Flower',
                  author: 'Ranjith Kuruppu',
                  imagePath: 'assets/images/Dessert Flower.png',
                  price: 'Rs. 960',
                ),
                SizedBox(width: 16),
                Book(
                  title: 'The Seven Moons of',
                  author: 'Shyam Selvadurai',
                  imagePath: 'assets/images/Cinnamon Gardens.jpg',
                  price: 'Rs. 3000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}