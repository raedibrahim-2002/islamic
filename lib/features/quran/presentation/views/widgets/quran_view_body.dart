import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/widgets/customDivider.dart';
import 'package:islami/features/quran/data/surah_names.dart';
import 'package:islami/features/quran/presentation/views/widgets/surah_name_item.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AssetsData.quranLogo)),
          const CustomDivider(
            divideValue: 3,
          ),
          Text(
            "Sura Name",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const CustomDivider(divideValue: 3),
          Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const CustomDivider(divideValue: 2);
              },
              itemCount: suraname.length,
              itemBuilder: (context, index) {
                return SurahNameItem(
                  surahName: suraname[index],
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
