import 'package:flutter/material.dart';
import 'package:just_the_tip/core/colors.dart';

class GridButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const GridButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kPurpleColor,
        height: 54,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
        ),
      ),
    );
  }
}
