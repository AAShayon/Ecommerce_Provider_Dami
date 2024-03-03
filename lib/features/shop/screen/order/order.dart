import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/features/shop/screen/order/widgets/order_list.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProductOrderScreen extends StatelessWidget {
  const ProductOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        title: Text(
          'My Order',
          style: Theme.of(context).textTheme.headlineSmall,
        ),showBackArrow: true,
      ),
      body: const Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: ProductOrderListItems(),
      ),
    );
  }
}
