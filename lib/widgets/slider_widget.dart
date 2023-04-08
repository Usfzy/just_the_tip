import 'package:flutter/material.dart';
import 'package:just_the_tip/custom_widgets/thumb_slider_widget.dart';
import 'package:just_the_tip/widgets/space.dart';

import '../core/colors.dart';

class PercentSliderWidget extends StatefulWidget {
  final Function(double percentage) onPercentageChanged;

  const PercentSliderWidget({Key? key, required this.onPercentageChanged})
      : super(key: key);

  @override
  State<PercentSliderWidget> createState() => _PercentSliderWidgetState();
}

class _PercentSliderWidgetState extends State<PercentSliderWidget> {
  double percentage = 10.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0,right: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tip',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kTextColor),
              ),
              Text(
                '${percentage.toStringAsFixed(0)} %',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kTextColor),
              ),
            ],
          ),
          vSpace(),
          ThumbSliderWidget(
            fullWidth: true,
            min: 0,
            max: 100,
            onPercentageChanged: (value) {
              setState(() {
                percentage = value;
                widget.onPercentageChanged(percentage);
              });
            },
          ),
        ],
      ),
    );
  }
}
