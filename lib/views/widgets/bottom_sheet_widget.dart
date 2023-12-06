import 'package:doc_talk/helpers/app_colors.dart';
import 'package:doc_talk/helpers/size.dart';
import 'package:doc_talk/views/widgets/custom_button.dart';
import 'package:doc_talk/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  List avatars = [
    'assets/images/Avatars.png',
    'assets/images/Avatars2.png',
    'assets/images/Avatars3.png',
    'assets/images/Avatars4.png',
    'assets/images/Avatars5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mQHeight(context) / 1.3,
      width: mQWidth(context),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Your child photo',
              style: TextStyle(fontSize: 18, color: AppColors.blackColor),
            ),
            const SizedBox(height: 5),
            Text(
              'Choose an avatar look like your child or upload a personal photo',
              style: TextStyle(
                  fontSize: 14, color: AppColors.blackColor.withOpacity(.5)),
            ),
            SizedBox(
              height: mQHeight(context) / 9,
              width: mQWidth(context),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: avatars.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(avatars[index]);
                },
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Is Your Child ..',
              style: TextStyle(fontSize: 14, color: AppColors.blackColor),
            ),
            Row(
              children: [
                Flexible(
                  child: ListTile(
                    leading: Radio(
                        activeColor: AppColors.greenColor,
                        value: false,
                        groupValue: true,
                        onChanged: (val) {}),
                    title: Text('Boy'.toUpperCase()),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    leading: Radio(
                        activeColor: AppColors.greenColor,
                        value: true,
                        groupValue: true,
                        onChanged: (val) {}),
                    title: Text('Girl'.toUpperCase()),
                  ),
                ),
              ],
            ),
            const Text(
              'What is his/her name ?',
              style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
            const SizedBox(height: 10),
            const CustomTextField(hintText: 'Child name'),
            const SizedBox(height: 10),
            const Text(
              'His/her age..',
              style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
            const SizedBox(height: 5),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(width: 10),
                const Text('0'),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.minimize),
                ),
              ],
            ),
            const Spacer(),
            const CustomButton(
              label: 'Add my child',
            )
          ],
        ),
      ),
    );
  }
}
