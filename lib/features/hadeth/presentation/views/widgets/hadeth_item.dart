import 'package:flutter/material.dart';

class HadethItem extends StatelessWidget {
  const HadethItem({super.key, required this.hadethData});
final  String hadethData;

  @override
  Widget build(BuildContext context) {
    return Text(
      hadethData,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}
