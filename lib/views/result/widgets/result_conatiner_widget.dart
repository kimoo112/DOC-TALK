import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 407.w,
        height: 229.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          image: const DecorationImage(
              image: AssetImage(
                'assets/images/result_container.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You get 30 points from 48 ',
                style: TextStyle(fontSize: 28.sp, color: Colors.white),
              ),
              SizedBox(height: 20.h),
              Text(
                'we will recommend some excercise  for your child to help improve his ability in talking',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, color: Colors.white,fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
