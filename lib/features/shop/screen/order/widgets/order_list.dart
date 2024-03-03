import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProductOrderListItems extends StatelessWidget {
  const ProductOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
   final dark=AppHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,__)=> const SizedBox(height: AppSizes.spaceBtwItems,),
      itemBuilder: (_,index)=> AppRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(AppSizes.md),
        backGroundColor: dark ? AppColors.dark : AppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: AppSizes.spaceBtwItems/2,),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.primary ,fontWeightDelta: 1,),),
                      Text('04 FEB 2024',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: AppSizes.iconSm,))
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: AppSizes.spaceBtwItems/2,),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium),
                            Text('[#256f2]',style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: AppSizes.spaceBtwItems/2,),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium,),
                            Text('09 FEB 2024',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ],
        ),
      ), itemCount: 10,


    );
  }
}
