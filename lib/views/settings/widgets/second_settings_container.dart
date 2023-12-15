import 'package:doc_talk/helpers/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondSettingsContainer extends StatelessWidget {
  const SecondSettingsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 404.w,
      height: 250.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              CupertinoIcons.music_note_2,
              color: AppColors.musicBG,
            ),
            title: const Text('Background Music'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.right_chevron),
            ),
          ),
          Divider(
            endIndent: 30.w,
            indent: 30.w,
          ),
          ListTile(
             leading: const Icon(
              CupertinoIcons.person_fill,
              color: AppColors.accountIcon,
            ),
            title: const Text('Account'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.right_chevron),
            ),
          ),
          Divider(
            endIndent: 30.w,
            indent: 30.w,
          ),
          ListTile(
              leading: const Icon(
              CupertinoIcons.bell_fill,
              color: AppColors.notificationIcon,
            ),
            title: const Text('Notification'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.right_chevron),
            ),
          )
        ],
      ),
    );
  }
}
