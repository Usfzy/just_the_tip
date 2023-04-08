import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const RichTextWidget({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        children: <TextSpan>[
          TextSpan(text: subTitle),
        ],
      ),
    );
  }
}
