import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LChoiceChip extends StatelessWidget {
  const LChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = LHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label: isColor ? const SizedBox() : Text(text),
          selected: selected,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selected ? LColors.white : null),
          avatar: isColor ? LCircularContainer(width: 50, height: 50, backgroundColor: LHelperFunctions.getColor(text)!) : null,
          labelPadding: isColor ? const EdgeInsets.all(0) : null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          shape: isColor ? const CircleBorder() : null,
          backgroundColor: isColor ? LHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}