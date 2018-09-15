import 'package:coffee_app/review/Review.dart';

class ReviewService {
  List<Review> fetchReviews() {
    return List.generate(10, (i) {
      return Review(
          stars: (i % 5) + 1,
          comment: "Good",
          timestamp: DateTime.now().subtract(Duration(days: i)));
    });
  }
}
