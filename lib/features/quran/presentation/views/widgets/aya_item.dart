import 'package:flutter/material.dart';

class AyaItem extends StatelessWidget {
  const AyaItem({
    super.key,
    required this.ayatext,
    required this.index,
  });
  final String ayatext;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$ayatext(${index + 1})",
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}
