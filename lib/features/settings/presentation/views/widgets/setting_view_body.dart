import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:islami/features/settings/presentation/views/widgets/app_language_inkwell.dart';
import 'package:islami/features/settings/presentation/views/widgets/app_theme_inkwell.dart';
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
          appThemeInkwell(context, provider),
        ],
      ),
    );
  }


}
