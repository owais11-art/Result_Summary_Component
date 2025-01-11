import 'package:flutter/material.dart';
import 'package:results_summary_component/widgets/result.dart';
import 'package:results_summary_component/widgets/summary.dart';

class ResultSummaryComponentScreen extends StatelessWidget {
  const ResultSummaryComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Result(), Summary()],
    );
  }
}
