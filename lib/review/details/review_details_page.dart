import 'package:coffee_app/review/review.dart';
import 'package:coffee_app/review/review_service.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/review/edit/review_edit_page.dart';

class ReviewDetailsPage extends StatelessWidget {
  final Review review;
  final ReviewService reviewService;

  ReviewDetailsPage(this.review, this.reviewService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Stack(children: [Text(review.comment)]), actions: [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => ReviewEditPage())),
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            this.reviewService.deleteReview(this.review);
            Navigator.pop(context);
          },
        )
      ]),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildReviewDetailsHeader(),
            buildReviewDetailsDescription(),
            buildReviewDetailsGraphics(),
          ]),
    );
  }

  Color roastColor(String roast) {
    switch (roast.toLowerCase()) {
      case 'light':
        return Colors.amber;
      case 'medium':
        return Colors.orangeAccent;
      case 'dark':
        return Colors.brown;
      default:
        return Colors.black;
    }
  }

  List<Widget> buildFlavorProfiles(List<String> flavorProfiles) {
    var flavorProfileTexts = <Widget>[
      Text(
        'Flavor Profile: ',
        style: TextStyle(fontSize: 18.0),
      ),
    ];
    flavorProfileTexts.addAll(flavorProfiles.map((flavorProfile) {
      return Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(flavorProfile,
            style: TextStyle(fontSize: 14.0, color: Colors.blue)),
      );
    }));
    return flavorProfileTexts;
  }

  Widget buildReviewDetailsHeader() {
    return Row(
      children: [
        Text(review.comment),
      ],
    ); // TODO: Star with comment from list
  }

  Widget buildReviewDetailsDescription() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text('Roast: ',
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  review.coffee.roast,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: roastColor(review.coffee.roast)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Origin: ',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(review.coffee.origin,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Row(children: buildFlavorProfiles(review.coffee.flavorProfile)),
          ),
        )
      ],
    );
  }

  Widget buildReviewDetailsGraphics() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildReviewDetailsImage(),
        buildReviewDetailsMap(),
      ],
    );
  }

  Widget buildReviewDetailsImage() {
    return Column(
      children: [Placeholder(), Text('Time'), Text('Date')],
    );
  }

  Widget buildReviewDetailsMap() {
    return Column(
      children: [
        Placeholder(),
        Text('Shop'),
        Text('Address 1'),
        Text('Address 2')
      ],
    );
  }
}
