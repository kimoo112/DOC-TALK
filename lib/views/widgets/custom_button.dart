import 'package:doc_talk/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
const CustomButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
    width: double.infinity,
    height: 50,
   decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: AppColors.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),alignment: Alignment.center,
            child: Text('Next',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),),
    );
  }
}