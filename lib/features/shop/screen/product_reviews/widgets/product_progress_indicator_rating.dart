import'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
class AppRatingProgressIndicator extends StatelessWidget {
  const AppRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 1,child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
      Expanded(
        flex: 11,
        child: SizedBox(
          width: AppDeviceUtils.getScreenWidth(context) *.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10,
            backgroundColor: AppColors.grey,
            valueColor:const AlwaysStoppedAnimation(AppColors.primary),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      )
    ],);
  }
}