import 'package:test_commerce/common/widgets/containers/circular_containers.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? AppCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunctions.getColor(text)!)
            : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? AppHelperFunctions.getColor(text)! : null,
        // selectedColor: Colors.green,
      ),
    );
  }
}
