import 'package:delivery_app_cliente/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class LOverallProductRating extends StatelessWidget {
  const LOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              LRatingProgressIndicator(text: '5', value: 0.9),
              LRatingProgressIndicator(text: '4', value: 0.8),
              LRatingProgressIndicator(text: '3', value: 0.6),
              LRatingProgressIndicator(text: '2', value: 0.4),
              LRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}