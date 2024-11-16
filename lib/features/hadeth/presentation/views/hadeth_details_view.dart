import 'package:flutter/material.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_details_view_body.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_view_body.dart';

class HadethDetailsView extends StatelessWidget {
  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
     var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return HadethDetailsViewBody(hadethData: args,
      
    );
  }
}