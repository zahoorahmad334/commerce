import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:commerce_store/features/shop/screens/cart/widgets/cart_items.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constant/sizes.dart';
import '../checkout/checkout.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
          Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        /// - Cart Items
        child: TCartItems(),
      ),
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$255.0')),
      ),
    );
  }
}

