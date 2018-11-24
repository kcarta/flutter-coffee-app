import 'package:coffee_app/review/review.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReviewListTile extends StatelessWidget {
  final Review review;
  final onTap;

  ReviewListTile({this.review, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(12.0),
      leading: Stack(alignment: AlignmentDirectional.center, children: [
        Icon(
          Icons.stars,
          size: 72.0,
          color: Color.lerp(Colors.orange, Colors.green, review.rating * .2),
        ),
        Text(
          review.rating.toString(),
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        )
      ]),
      title: Text(
        review.comment,
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text(DateFormat.yMMMd().format(review.timestamp)),
      onTap: this.onTap,
    );
  }
}
