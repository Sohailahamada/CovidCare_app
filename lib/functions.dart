import 'package:flutter/material.dart';
Widget defaultButton({
  double width = double.infinity,
  double elevation = 10,
  Color? background,
  double radius = 12.0,
  double textSize = 16.0,
  required var function,
  required String text,
  Color textColor = Colors.black,
  required BuildContext context,
  LinearGradient? gradient,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 5, left: 5.44),
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          color: background,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: MaterialButton(
          onPressed: function,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (ctx) => widget,
    ));
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => widget),
      (route) => false,
);