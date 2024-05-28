import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class LRatingProgressIndicator extends StatelessWidget {
  const LRatingProgressIndicator({
    super.key, required this.text, required this.value
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: LDeviceUtils.getScreenWidht(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: LColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(LColors.primary),                            
            ),
          ),
        ),
      ],
    );
  }
}