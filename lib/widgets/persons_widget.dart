import 'package:flutter/material.dart';
import 'package:just_the_tip/widgets/space.dart';

import '../core/colors.dart';

class PersonsWidget extends StatefulWidget {
  final Function(int persons) onPersonsChanged;
  const PersonsWidget({Key? key,required this.onPersonsChanged}) : super(key: key);

  @override
  State<PersonsWidget> createState() => _PersonsWidgetState();
}

class _PersonsWidgetState extends State<PersonsWidget> {
  int persons = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0,right:16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Persons',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (persons > 1) persons--;
                    widget.onPersonsChanged(persons);
                  });

                },
                child: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kPurpleColor,
                  ),
                  child: Text('-', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kWhiteColor),),
                ),
              ),
              hSpace(),
              Text('$persons', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),),
              hSpace(),
              InkWell(
                onTap: () {
                  setState(() {
                    persons++;
                    widget.onPersonsChanged(persons);
                  });
                },
                child: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kPurpleColor,
                  ),
                  child: Text('+', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kWhiteColor)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
