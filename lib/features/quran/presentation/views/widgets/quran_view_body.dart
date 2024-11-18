import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/core/utilis/widgets/customDivider.dart';
import 'package:islami/features/quran/data/surah_names.dart';
import 'package:islami/features/quran/presentation/views/widgets/surah_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AssetsData.quranLogo)),
          Divider(
            color: provider.isDark()
                ? AppTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.surah_name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: provider.isDark()
                ? AppTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const CustomDivider(divideValue: .3);
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
