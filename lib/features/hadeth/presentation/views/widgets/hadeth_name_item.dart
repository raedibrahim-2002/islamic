import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_view_body.dart';

class HadethNameItem extends StatelessWidget {
  HadethNameItem({super.key, required this.hadethData});
  HadethData hadethData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.hadethDetailsRouteName,
            arguments: hadethData);
      },
      child: Text(
        hadethData.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
