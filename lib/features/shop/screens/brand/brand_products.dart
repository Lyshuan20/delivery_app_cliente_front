import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/brands/brand_card.dart';
import 'package:delivery_app_cliente/common/widgets/products/sortable/sortable_products.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LAppBar(title: Text('SyphneiDental'), shoBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              // Brand Detail
              LBrandCard(showBorder: true),
              SizedBox(height: LSizes.spaceBtwSection),

              LSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}