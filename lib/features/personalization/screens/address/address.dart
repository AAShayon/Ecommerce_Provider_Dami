import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/features/personalization/screens/address/add_new_address.dart';
import 'package:test_commerce/features/personalization/screens/address/widget/single_address.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
 
import 'package:iconsax/iconsax.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Get.to(() => const AddNewAddress())
        onPressed: ()=>AppHelperFunctions.navigateToScreen(context, const AddNewAddress()),
        backgroundColor: AppColors.primary,
        child: const Icon(
          Iconsax.add,
          color: AppColors.white,
        ),
      ),
      appBar: AppCustomAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
           AppSingleAddress(selectedAddress: true),
           AppSingleAddress(selectedAddress: false),

            ],
          ),
        ),
      ),
    );
  }
}
