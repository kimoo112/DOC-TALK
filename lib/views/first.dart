import 'package:doc_talk/helpers/app_colors.dart';
import 'package:doc_talk/views/widgets/custom_button.dart';
import 'package:doc_talk/views/widgets/date_of_birth_drop_down.dart';
import 'package:flutter/material.dart';

import 'widgets/child_linear_progress.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/parent_linear_progress.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Parent',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ParentLinearProgress(
                  label: "Parent info",
                ),
                ChildlinearProgressWidget(),
              ],
            ),
            SizedBox(
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 44,
                  backgroundImage: AssetImage('assets/images/father pic.png'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 44,
                  backgroundImage: AssetImage('assets/images/mother pic.png'),
                )
              ],
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Father /Mother name',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Enter Name here',
            ),
            SizedBox(
              height: 20,
            ),
            DateOfBirthSelector(),
            SizedBox(
              height: 40,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
