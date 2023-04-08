import 'package:flutter/material.dart';
import 'package:just_the_tip/widgets/grid_button.dart';
import 'package:just_the_tip/widgets/space.dart';

class KeypadWidget extends StatefulWidget {
  final Function(String bill) onValueChanged;

  const KeypadWidget({Key? key, required this.onValueChanged})
      : super(key: key);

  @override
  State<KeypadWidget> createState() => _KeypadWidgetState();
}

class _KeypadWidgetState extends State<KeypadWidget> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GridButton(
                title: '1',
                onTap: () {
                  text += '1';
                  widget.onValueChanged(text);
                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '2',
                onTap: () {
                  text += '2';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '3',
                onTap: () {
                  text += '3';
                  widget.onValueChanged(text);

                },
              ),
            ),
          ],
        ),
        vSpace(),
        Row(
          children: [
            Expanded(
              child: GridButton(
                title: '4',
                onTap: () {
                  text += '4';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '5',
                onTap: () {
                  text += '5';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '6',
                onTap: () {
                  text += '6';
                  widget.onValueChanged(text);

                },
              ),
            ),
          ],
        ),
        vSpace(),
        Row(
          children: [
            Expanded(
              child: GridButton(
                title: '7',
                onTap: () {
                  text += '7';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '8',
                onTap: () {
                  text += '8';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '9',
                onTap: () {
                  text += '9';
                  widget.onValueChanged(text);

                },
              ),
            ),
          ],
        ),
        vSpace(),
        Row(
          children: [
            Expanded(
              child: GridButton(
                title: '.',
                onTap: () {
                  text += '.';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '0',
                onTap: () {
                  text += '0';
                  widget.onValueChanged(text);

                },
              ),
            ),
            hSpace(),
            Expanded(
              child: GridButton(
                title: '<',
                onTap: () {
                text =  text.substring(0, text.length - 1);
                  widget.onValueChanged(text);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
