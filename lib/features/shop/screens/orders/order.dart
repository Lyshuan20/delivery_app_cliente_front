import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/features/shop/screens/orders/widgets/orders_list.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar
      appBar: LAppBar(title: Text('Mis pedidos', style: Theme.of(context).textTheme.headlineSmall), shoBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(LSizes.defaultSapce),

        // -- Pedidos
        child: LOrderListItems(),
      ),
    );
  }
}