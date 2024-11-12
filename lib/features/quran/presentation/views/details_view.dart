import 'package:flutter/material.dart';
import 'package:islami/features/quran/presentation/views/widgets/details_view_body.dart';
import 'package:islami/features/quran/presentation/views/widgets/surah_name_item.dart';

class SurahDetailsView extends StatelessWidget {
  const SurahDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SurahDetailsArgs;
    return  SurahDetailsViewBody(surahDetailsArgs: args,);
  }
}
