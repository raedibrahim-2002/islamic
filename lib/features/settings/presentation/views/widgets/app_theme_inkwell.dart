  import 'package:flutter/material.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:islami/features/settings/presentation/views/widgets/theme_bottom_shet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

InkWell appThemeInkwell(BuildContext context, AppConfigProvider provider) {
    return InkWell(
          onTap: () => showThemeBottomShet(context),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appThemeMode == ThemeMode.dark
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Icon(Icons.arrow_drop_down_rounded)
                ],
              ),
            ),
          ),
        );
  }



 

  void showThemeBottomShet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomShet(),
    );
  }