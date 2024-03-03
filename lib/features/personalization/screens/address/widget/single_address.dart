import'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSingleAddress extends StatelessWidget {
  const AppSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding:  const EdgeInsets.all(AppSizes.md),
      backGroundColor: selectedAddress
          ? AppColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkerGrey
              : AppColors.grey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? AppColors.light
                      : AppColors.dark.withOpacity(.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Name demo 1 ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: AppSizes.sm / 2,
              ),
              const Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: AppSizes.sm / 2,
              ),
              const Text('82235 Timmy coves ,south Liane ,Maine,2121,USA',softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
