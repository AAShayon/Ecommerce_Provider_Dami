import'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';


class AppGridLayout extends StatelessWidget {
  const AppGridLayout(
      {super.key,
        required this.itemCount,
        this.mainAxisExtent=288,
        required this.itemBuilder});

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisExtent: mainAxisExtent,mainAxisSpacing: AppSizes.gridViewSpacing,crossAxisSpacing: AppSizes.gridViewSpacing

      ),
      itemBuilder: itemBuilder,
    );
  }
}
