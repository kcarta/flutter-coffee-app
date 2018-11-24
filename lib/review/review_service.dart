import 'dart:math';
import 'package:coffee_app/review/coffee.dart';
import 'package:coffee_app/review/review.dart';

class ReviewService {
  final List<Review> _reviews = fetchReviews();

  List<Review> getReviews() {
    return _reviews;
  }

  static List<Review> fetchReviews() {
    Random _random = Random();
    return List.generate(10, (_) {
      var rating = _random.nextInt(5) + 1;
      var daysInThePast = _random.nextInt(60);
      return Review(
          rating,
          'Good',
          DateTime.now().subtract(Duration(days: daysInThePast)),
          Coffee('Titus', 'Hand Brew', 'Medium', 'Kenya',
              flavorProfile: ['Floral', 'Fruity']));
    });
  }

  void deleteReview(Review review) {
    _reviews.remove(review);
  }
}
