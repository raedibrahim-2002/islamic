import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';

class SurahNameItem extends StatelessWidget {
  const SurahNameItem(
      {super.key, required this.surahName, required this.index});
  final String surahName;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.surahDetailsRouteName,
            arguments: SurahDetailsArgs(name: surahName, index: index));
      },
      child: Text(
        surahName,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class SurahDetailsArgs {
  String name;
  int index;

  SurahDetailsArgs({required this.name, required this.index});
}
