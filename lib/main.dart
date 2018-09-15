import 'package:coffee_app/review/list/review_list_page.dart';
import 'package:coffee_app/review/review_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReviewListPage(
        title: 'Reviews',
        reviewService: ReviewService(),
      ),
    );
  }
}
