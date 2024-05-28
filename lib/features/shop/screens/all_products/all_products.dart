import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/products/sortable/sortable_products.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LAppBar(title: Text('DentsphySirona'), shoBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(LSizes.defaultSapce),
          child: LSortableProducts(),
        ),
      ),
    );
  }
}