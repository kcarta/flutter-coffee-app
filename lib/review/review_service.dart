import 'dart:math';
import 'package:coffee_app/review/review.dart';

class ReviewService {
  final Random _random = Random();

  List<Review> fetchReviews() {
    return List.generate(10, (_) {
      var rating = _random.nextInt(5) + 1;
      var daysInThePast = _random.nextInt(60);
      return Review(
          rating: rating,
          comment: "Good",
          timestamp: DateTime.now().subtract(Duration(days: daysInThePast)));
    });
  }
}
