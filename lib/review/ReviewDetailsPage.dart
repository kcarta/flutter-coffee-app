import 'package:coffee_app/review/Review.dart';
import 'package:flutter/material.dart';

class ReviewDetailsPage extends StatelessWidget {

  final Review review;
  ReviewDetailsPage(this.review);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: Text(review.comment)
        ),
        body: Text(review.comment),
      );
  }
}