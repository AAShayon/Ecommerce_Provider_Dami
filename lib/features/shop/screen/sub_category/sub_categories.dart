import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/images/rounded_images.dart';
import 'package:test_commerce/common/widgets/products/products_cards/products_card_horizontal.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSubCategories extends StatelessWidget {
  const ProductSubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppCustomAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            const AppRoundImage(imageUrl: AppImages.promoBanner4,
            width: double.infinity,
              applyImageRadius: true,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections,),
            Column(
              children: [
                AppSectionHeading(title: 'Sports shirts',onPressed: (){},),
                const SizedBox(height: AppSizes.spaceBtwItems/2,),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context,index){return const SizedBox(width: AppSizes.spaceBtwItems,);},
                    itemCount: 6,scrollDirection:Axis.horizontal ,
                    itemBuilder: (context,index)=>const ProductCardHorizontal(),),
                )
              ],
            )
          ],
        ),
        
        ),
      ),
    );
  }
}
