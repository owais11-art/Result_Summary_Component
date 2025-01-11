import 'package:flutter/material.dart';
import 'package:results_summary_component/res/app_colors.dart';
import 'package:results_summary_component/widgets/result_summary_component_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.light,
        body: ResultSummaryComponentScreen(),
      )),
    );
  }
}
