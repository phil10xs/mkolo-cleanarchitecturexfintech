import 'package:flutter/material.dart';

class RenSecondaryButton extends StatelessWidget {
  const RenSecondaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.textColor,
    this.padding = const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 16,
    ),
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);
  final Function()? onPressed;
  final String text;
  final Color color;
  final Color textColor;
  final EdgeInsets padding;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: textColor,
                fontSize: 12,
                fontWeight: fontWeight,
              ),
        ),
      ),
    );
  }
}
