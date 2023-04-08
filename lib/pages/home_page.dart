import 'package:flutter/material.dart';
import 'package:just_the_tip/core/colors.dart';
import 'package:just_the_tip/widgets/keypad_widget.dart';
import 'package:just_the_tip/widgets/persons_widget.dart';
import 'package:just_the_tip/widgets/slider_widget.dart';
import 'package:just_the_tip/widgets/space.dart';
import 'package:just_the_tip/widgets/top_bar_widget.dart';

import '../core/utils.dart';

class HomePage extends StatefulWidget {
  static const String route = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bill = '0.0';

  double total = 0.0;
  double each = 0.0;

  double eachPercentage = 0.0;
  double eachTotalAfterPercentage = 0.0;

  double percentage = 10;
  int persons = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkLight,
      body: Column(
        children: [
          TopBarWidget(
            total: total,
            each: each,
            eachPercentage: eachPercentage,
            eachTotalAfterPercentage: eachTotalAfterPercentage,
          ),
          PersonsWidget(
            onPersonsChanged: (persons) {
              this.persons = persons;
              calculateBill();
            },
          ),
          vSpace(16),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right:16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bill',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
                ),
                Text(
                  bill,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
                ),
              ],
            ),
          ),
          vSpace(32),
          PercentSliderWidget(
            onPercentageChanged: (percentage) {
              this.percentage = percentage;

              calculateBill();
            },
          ),
          const Spacer(),
          KeypadWidget(
            onValueChanged: (bill) {
              this.bill = bill;
              total = double.parse(bill);

              calculateBill();
            },
          ),
          vSpace(),
        ],
      ),
    );
  }

  void calculateBill() {
    final percent = Utils.calculatePercentage(percentage, total);

    each = (total / persons);

    eachPercentage = percent / persons;
    eachTotalAfterPercentage = each + eachPercentage;

    setState(() {});
  }
}
