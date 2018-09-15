import 'package:coffee_app/review/Review.dart';
import 'package:coffee_app/review/ReviewDetailsPage.dart';
import 'package:flutter/material.dart';

class ReviewListTile extends StatelessWidget {
  final Review review;

  ReviewListTile({this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.stars),
      title: Text(review.comment),
      subtitle: Text(review.timestamp.toString()),
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => ReviewDetailsPage(review))),
    );
  }
}
