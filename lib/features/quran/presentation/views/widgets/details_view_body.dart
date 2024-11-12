import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/features/quran/presentation/views/widgets/surah_name_item.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key, required this.surahDetailsArgs});
  final SurahDetailsArgs surahDetailsArgs;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        AssetsData.homeBackground,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
        title: Text(
          surahDetailsArgs.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ))
    ]);
  }
}
