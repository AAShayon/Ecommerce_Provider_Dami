import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/images/circular_image.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/features/authentication/screens/login/login.dart';
import 'package:test_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppCustomAppBar(title: Text('Profile'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child:Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppCircularImage(image: AppImages.user,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems ,),
             const AppSectionHeading(title: 'Profile Information',showActionButton: false,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              ProfileMenu(title: 'Name',value: 'Ismail Hatela',onPressed: (){},),
              ProfileMenu(title: 'User Name',value: 'Hatela Vai 69',onPressed: (){},),
              const SizedBox(height: AppSizes.spaceBtwItems ,),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems ,),
              const AppSectionHeading(title: 'Personal Infromation',showActionButton: false,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              ProfileMenu(onPressed: (){}, title: 'User ID', value: '000069',icon: Iconsax.copy),
              ProfileMenu(onPressed: (){}, title: 'E-mail', value: 'ismail.hatela@gmail.com'),
              ProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+8801977339340'),
              ProfileMenu(onPressed: (){}, title: 'Gender', value: 'male'),
              ProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '1 may ,1998'),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              Center(
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)),
              )
            ],
          ),),
      ),
    );
  }
}

