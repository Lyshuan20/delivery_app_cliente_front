import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/products/ratings/rating_indicator.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar
      appBar: const LAppBar(title: Text('Reseñas y calificaciones'), shoBackArrow: true),

      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Las calificaciones y reseñas están verificadas y son de personas que usan el mismo tipo de dispositivo que utilizas."),
              const SizedBox(height: LSizes.spaceBtwItems),

              // Overall product ratings
              const LOverallProductRating(),
              const LRatingBarIndicator(rating: 4.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: LSizes.spaceBtwSection),

              // User Reviews List
              const LUserReviewCard(),
              const LUserReviewCard(),
              const LUserReviewCard(),
              const LUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}



