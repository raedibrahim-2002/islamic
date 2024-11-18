import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class SurahNameItem extends StatelessWidget {
  const SurahNameItem(
      {super.key, required this.surahName, required this.index});
  final String surahName;
  final int index;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.surahDetailsRouteName,
            arguments: SurahDetailsArgs(name: surahName, index: index));
      },
      child: Text(
        surahName,
        style: provider.isDark()
            ? Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppTheme.whiteColor)
            : Theme.of(context).textTheme.titleSmall,
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
