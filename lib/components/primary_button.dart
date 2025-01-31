import 'package:flutter/material.dart';

import 'package:senses/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.title,
    required this.process,
    super.key,
    this.screenWidth,
  });

  final double? screenWidth;
  final String? title;
  final void Function()? process;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: process,
        style: ElevatedButton.styleFrom(
          elevation: 6.0,
          backgroundColor: kDeepBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Text(
          title!,
          style: kMainButtonTextStyle,
        ),
      ),
    );
  }
}