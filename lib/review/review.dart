import 'package:coffee_app/review/coffee.dart';

class Review {
  final int rating;
  final String comment;
  final DateTime timestamp;
  final Coffee coffee;

  Review(this.rating, this.comment, this.timestamp, this.coffee);
}
