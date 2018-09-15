import 'package:coffee_app/review/edit/review_edit_page.dart';
import 'package:coffee_app/review/list/review_list_tile.dart';
import 'package:coffee_app/review/review_service.dart';
import 'package:flutter/material.dart';

class ReviewListPage extends StatefulWidget {
  final String title;
  final ReviewService reviewService;

  ReviewListPage({Key key, this.title, this.reviewService}) : super(key: key);

  @override
  _ReviewListPageState createState() => _ReviewListPageState(reviewService);
}

class _ReviewListPageState extends State<ReviewListPage> {
  final ReviewService reviewService;

  _ReviewListPageState(this.reviewService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: reviewService
            .fetchReviews()
            .map((review) => ReviewListTile(review: review))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ReviewEditPage())
        ),
        tooltip: 'New Review',
        child: Icon(Icons.add),
      ),
    );
  }
}
