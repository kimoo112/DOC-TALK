import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/app_colors.dart';

class ChildDetails extends StatelessWidget {
  const ChildDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/Avatars1.png'),
            minRadius: 40,
          ),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 5.r,
                    backgroundColor: AppColors.greenColor,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    'RAHMA',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Text('Dosent use the app yet'),
            ],
          ),
        ],
      ),
    );
  }
}
