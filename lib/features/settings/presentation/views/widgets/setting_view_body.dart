import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:islami/features/settings/presentation/views/widgets/language_bottom_shet.dart';
import 'package:islami/features/settings/presentation/views/widgets/theme_bottom_shet.dart';
import 'package:provider/provider.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          AppLanguageInkwell(context, provider),
          const SizedBox(
            height: 15,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
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
          ),
        ],
      ),
    );
  }

  InkWell AppLanguageInkwell(BuildContext context, AppConfigProvider provider) {
    return InkWell(
      onTap: () => showLanguageBottomShet(context),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                provider.appLanguage == "en"
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Icon(Icons.arrow_drop_down_rounded)
            ],
          ),
        ),
      ),
    );
  }

  void showLanguageBottomShet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomShet(),
    );
  }

  void showThemeBottomShet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomShet(),
    );
  }
}
