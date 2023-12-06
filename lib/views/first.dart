import 'package:doc_talk/helpers/app_colors.dart';
import 'package:doc_talk/views/widgets/custom_button.dart';
import 'package:doc_talk/views/widgets/date_of_birth_drop_down.dart';
import 'package:flutter/material.dart';

import 'second.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ParentLinearProgress(
                  label: "Parent info",
                  value:.50
                ),
                ChildlinearProgressWidget(
                  value: 0,
                ),
              ],
            ),
            const SizedBox(
              height: 44,
            ),
            const Row(
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
            const SizedBox(
              height: 44,
            ),
            const Text(
              'Father /Mother name',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: 'Enter Name here',
            ),
            const SizedBox(
              height: 20,
            ),
            const DateOfBirthSelector(),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Second()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
