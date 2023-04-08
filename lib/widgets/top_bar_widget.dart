import 'package:flutter/material.dart';
import 'package:just_the_tip/core/colors.dart';
import 'package:just_the_tip/core/utils.dart';
import 'package:just_the_tip/widgets/space.dart';

class TopBarWidget extends StatelessWidget {
  final double total;
  final double each;
  final double eachPercentage;
  final double eachTotalAfterPercentage;

  const TopBarWidget({
    Key? key,
    required this.total,
    required this.each,
    required this.eachPercentage,
    required this.eachTotalAfterPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: CustomPaint(
        painter: CurvePainter(),
        child: Column(
          children: [
            vSpace(32),
            buildRow(context, 'Each After Percentage', eachTotalAfterPercentage),
            buildRow(context, 'Each Percentage', eachPercentage),
            buildRow(context, 'Total', total),
            buildRow(context, 'Each', each),
            vSpace(),
          ],
        ),
      ),
    );
  }

  Widget buildRow(BuildContext context, String title, double amount) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: kWhiteColor),
          ),
        ),
        Expanded(
          child: Text(
            '${Utils.euroSymbol} ${amount.toStringAsFixed(2)}',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: kWhiteColor),
          ),
        ),
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = kPurpleColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.40);
    path.quadraticBezierTo(
        size.width / 6, size.height, size.width, size.height * 0.40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
