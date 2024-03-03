import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppCustomAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name' ),),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number' ),),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(flex: 5,child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street' ),)),
                const SizedBox(width: AppSizes.spaceBtwInputFields,),
                Expanded(flex: 5,child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code' ),)),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(flex: 5,child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City' ),)),
                const SizedBox(width: AppSizes.spaceBtwInputFields,),
                Expanded(flex: 5,child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State' ),)),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country' ),),
            const SizedBox(height: AppSizes.defaultSpace,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child:const Text('Save')),)

          ],
        ),

        ),
      ),
    );
  }
}
