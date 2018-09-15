import 'package:coffee_app/review/Review.dart';
import 'package:coffee_app/review/ReviewEditPage.dart';
import 'package:coffee_app/review/ReviewListTile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Review> _reviews = List.generate(20, (i) {
    return Review(stars: i % 5, comment: "Good", timestamp: DateTime.now());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: _reviews.map((review) {
            return ReviewListTile(review: review);
          }).toList()
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (_) => ReviewEditPage())
        ),
        tooltip: 'New Review',
        child: Icon(Icons.add),
      ),
    );
  }
}
