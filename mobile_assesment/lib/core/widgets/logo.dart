import 'package:flutter/material.dart';

import '../assets/assets.dart';

class RenmoneyLogo extends StatelessWidget {
  const RenmoneyLogo({
    Key? key,
    this.scale = 1.5,
  }) : super(key: key);

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Image.asset(kLogo, scale: 1.5);
  }
}
