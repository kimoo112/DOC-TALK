import 'package:doc_talk/helpers/app_colors.dart';
import 'package:doc_talk/helpers/size.dart';
import 'package:doc_talk/views/third.dart';
import 'package:doc_talk/views/widgets/custom_button.dart';
import 'package:doc_talk/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool isBoySelected = false;
  int age = 0;
  int selectedAvatarIndex = -1;
  List avatars = [
    'assets/images/gallery.png',
    'assets/images/Avatars.png',
    'assets/images/Avatars2.png',
    'assets/images/Avatars3.png',
    'assets/images/Avatars4.png',
    'assets/images/Avatars5.png',
  ];
  TextEditingController? controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String imagePath = '';
  Future<void> pickImageFromGallery() async {
    try {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        imagePath = pickedFile.path;
      } else {}
    } catch (e) {
      debugPrint(e.toString());
    }
  }

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
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        pickImageFromGallery();
                      } else {
                        setState(() {
                          selectedAvatarIndex = index;
                        });
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAvatarIndex == index
                              ? AppColors.greenColor
                              : Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        avatars[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Is Your Child ..',
              style: TextStyle(fontSize: 14, color: AppColors.blackColor),
            ),
            isBoyOrGirlRadios(),
            const Text(
              'What is his/her name ?',
              style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
            const SizedBox(height: 10),
            Form(
                key: formKey,
                child: CustomTextField(
                  hintText: 'Child name',
                  controller: controller,
                )),
            const SizedBox(height: 10),
            const Text(
              'His/her age..',
              style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
            const SizedBox(height: 5),
            Row(
              children: <Widget>[
                increaseAge(),
                const SizedBox(width: 10),
                Text(age.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(width: 10),
                decreaseAge(),
              ],
            ),
            const Spacer(),
            CustomButton(
              label: 'Add my child',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Third(
                          imagePath: imagePath,
                              childName: controller!.text.toString(),
                            )),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Row isBoyOrGirlRadios() {
    return Row(
      children: [
        Flexible(
          child: ListTile(
            leading: Radio(
                activeColor: AppColors.greenColor,
                value: false,
                groupValue: isBoySelected,
                onChanged: (val) {
                  setState(() {
                    isBoySelected = val!;
                  });
                }),
            title: Text('Boy'.toUpperCase()),
          ),
        ),
        Flexible(
          child: ListTile(
            leading: Radio(
                activeColor: AppColors.greenColor,
                value: true,
                groupValue: isBoySelected,
                onChanged: (val) {
                  setState(() {
                    isBoySelected = val!;
                  });
                }),
            title: Text('Girl'.toUpperCase()),
          ),
        ),
      ],
    );
  }

  Container increaseAge() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () {
          age++;
          setState(
            () {},
          );
        },
        icon: const Icon(Icons.add),
      ),
    );
  }

  Container decreaseAge() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () {
          age--;
          setState(() {});
        },
        icon: const Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
