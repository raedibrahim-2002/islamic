import 'package:flutter/material.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_view_body.dart';

class HadethItem extends StatelessWidget {
  HadethItem({super.key, required this.hadethData});
  String hadethData;

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
