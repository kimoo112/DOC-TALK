import 'package:doc_talk/views/settings/views/settings_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/result_conatiner_widget.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsView()),
              );
            },
            icon: Icon(CupertinoIcons.xmark_circle,
                color: Colors.white.withOpacity(.9)),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/result_backgorund.png',
              ),
              fit: BoxFit.cover),
        ),
        alignment: Alignment.center,
        child: const ResultContainer(),
      ),
    );
  }
}
