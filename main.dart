import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strawberry Smoothis'),
        ),
        body: Row(
          children: [
            // Column on the left
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromARGB(255, 235, 135, 201),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'dilyams smots',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 255, 169, 226)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Strawberry Smoothis',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Salah satu olahan strawberry yang bisa kamu coba adalah strawberry smoothies, yakni strawberry yang diblender bersama air, susu, atau yoghurt. Tak hanya itu, smoothies ini juga bisa dilengkapi dengan buah lain, kacang, atau biji-bijian seperti chia seed'
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              SizedBox(width: 8),
                              Text('1M Reviews'),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.kitchen, color: Colors.red),
                                    SizedBox(height: 8),
                                    Text('PREP:'),
                                    Text('25 min'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.timer, color: Colors.green),
                                    SizedBox(height: 8),
                                    Text('COOK:'),
                                    Text('1 hr'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.restaurant, color: Colors.orange),
                                    SizedBox(height: 8),
                                    Text('FEEDS:'),
                                    Text('4-6'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Image on the right
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/download.jpg', // Update this path with your image asset
                  fit: BoxFit.cover, // Adjust the image to cover the available space
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
