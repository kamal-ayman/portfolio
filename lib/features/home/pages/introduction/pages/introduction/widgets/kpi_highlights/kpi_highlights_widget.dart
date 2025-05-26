import 'package:flutter/material.dart';

class KpiHighlightsWidget extends StatelessWidget {
  final List<Widget> kpiHightlights;

  const KpiHighlightsWidget({super.key, required this.kpiHightlights});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Wrap(
        spacing: 60,
        runSpacing: 20,
        alignment: WrapAlignment.spaceAround,
        children: kpiHightlights,
      ),
    );
  }
}
