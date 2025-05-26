import 'package:flutter/material.dart';
import 'kpi_highlights_widget.dart';
import 'widgets/widgets.dart';

class KpiHighlightsWrapper extends StatelessWidget {
  const KpiHighlightsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const KpiHighlightsWidget(
      kpiHightlights: [
        KpiHighlightWidget(label: 'Years of \nExperience', value: '4+'),
        KpiHighlightWidget(label: 'Project \nCompleted', value: '20+'),
        KpiHighlightWidget(label: 'Happy \nClients', value: '50+'),
        KpiHighlightWidget(label: 'Years of \nExperience', value: '4+'),
      ],
    );
  }
}
