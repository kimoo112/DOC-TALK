import 'package:flutter/material.dart';

import '../../helpers/app_colors.dart';

class ChildlinearProgressWidget extends StatelessWidget {
  const ChildlinearProgressWidget({
    super.key, required this.value,
  });
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 140,
          child: LinearProgressIndicator(
            color: AppColors.primaryColor,
            value: value,
            minHeight: 5,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Child info",
          style: TextStyle(
              color: AppColors.primaryColor.withOpacity(.3),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
