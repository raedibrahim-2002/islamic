import 'package:flutter/material.dart';
import 'package:islami/features/home/presentation/views/widgets/hoem_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = "home-view";
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
