
import 'package:flutter/material.dart';

import '../../helpers/app_colors.dart';

class ParentLinearProgress extends StatelessWidget {
  const ParentLinearProgress({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 170,
          child: LinearProgressIndicator(
            color: AppColors.primaryColor,
            value: .50,
            minHeight: 5,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(
              color: AppColors.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
