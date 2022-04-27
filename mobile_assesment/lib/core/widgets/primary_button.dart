import 'package:flutter/material.dart';

class RenPrimaryButton extends StatelessWidget {
  const RenPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = const Color.fromRGBO(5, 94, 131, 1),
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: () => onPressed(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
