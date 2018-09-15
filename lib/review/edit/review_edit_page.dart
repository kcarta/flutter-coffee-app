import 'package:coffee_app/review/review.dart';
import 'package:flutter/material.dart';

class ReviewEditPage extends StatefulWidget {
  final Review review;

  ReviewEditPage({this.review});

  @override
  State<StatefulWidget> createState() {
    return ReviewEditState(review: review);
  }
}

class ReviewEditState extends State<ReviewEditPage> {
  final _formKey = GlobalKey<FormState>();

  final Review review;

  ReviewEditState({this.review});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: RaisedButton(
          onPressed: _saveReview,
          child: Text("Save"),
        ),
      ),
    );
  }

  void _saveReview() {
    Navigator.pop(context);
  }
}
