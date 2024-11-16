import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/hadeth/presentation/views/hadeth_details_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/quran/presentation/views/surah_details_view.dart';
import 'package:islami/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {
        AppRoutes.homeRouteName: (context) => const HomeView(),
        AppRoutes.surahDetailsRouteName: (context) => const SurahDetailsView(),
        AppRoutes.hadethDetailsRouteName: (context) =>
            const HadethDetailsView(),
      },
      theme: AppTheme.lightTheme,
      locale: Locale("ar"),
    );
  }
}
