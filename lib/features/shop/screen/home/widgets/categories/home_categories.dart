import 'package:test_commerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:test_commerce/features/shop/screen/sub_category/sub_categories.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:flutter/material.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return  VerticalImageText(image: AppImages.shoeIcon, title: 'shoe',onTap: (){},);
          }),
    );
  }
}