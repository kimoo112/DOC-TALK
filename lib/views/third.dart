import 'dart:io';

import 'package:doc_talk/helpers/app_colors.dart';
import 'package:doc_talk/views/widgets/child_linear_progress.dart';
import 'package:doc_talk/views/widgets/custom_button.dart';
import 'package:doc_talk/views/widgets/parent_linear_progress.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({Key? key, required this.childName, required this.imagePath})
      : super(key: key);
  final String childName;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Children"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ParentLinearProgress(label: 'Parent Info', value: 1),
              ChildlinearProgressWidget(value: 1),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: imagePath != ''
                      ? FileImage(File(imagePath)) as ImageProvider
                      : const AssetImage('assets/images/Avatars1.png'),
                  minRadius: 40,
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColors.greenColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          childName,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Text('Dosent use the app yet'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomButton(),
          )
        ],
      ),
    );
  }
}
