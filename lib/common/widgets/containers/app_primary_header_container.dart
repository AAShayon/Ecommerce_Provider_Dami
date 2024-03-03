import 'package:test_commerce/common/widgets/containers/circular_containers.dart';
import 'package:test_commerce/common/widgets/custom_shapes/app_curved_edges_widgets.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:flutter/material.dart';


class AppHeaderContainer extends StatelessWidget {
  const AppHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        ///Sized Box er height chilo 400 ,sized box remove kore place gulate const SizedBox(height :SSizes.spaceBtwSections )
        child: Stack(
          children: [
            Positioned(top:-150,right:-250,child: AppCircularContainer(backgroundColor: AppColors.textWhite.withOpacity(.1),)),
            Positioned(top:100,right: -300, child: AppCircularContainer(backgroundColor: AppColors.textWhite.withOpacity(.1),)),
            child
          ],
        ),
      ),);
  }
}