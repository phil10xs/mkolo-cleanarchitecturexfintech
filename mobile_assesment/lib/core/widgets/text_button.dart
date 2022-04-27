import 'package:flutter/material.dart';

class RenTextButton extends StatelessWidget {
  const RenTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressed(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline2!.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
