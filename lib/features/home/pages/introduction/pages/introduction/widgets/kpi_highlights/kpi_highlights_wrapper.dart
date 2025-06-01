import 'package:flutter/material.dart';
import 'kpi_highlights_widget.dart';
import 'widgets/widgets.dart';

class KpiHighlightsWrapper extends StatelessWidget {
  const KpiHighlightsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return KpiHighlightsWidget(
      kpiHightlights: [
        KpiHighlightWrapper(label: 'Years of \nExperience', value: 4),
        KpiHighlightWrapper(label: 'Project \nCompleted', value: 20),
        KpiHighlightWrapper(label: 'Happy \nClients', value: 50),
        KpiHighlightWrapper(label: 'Years of \nExperience', value: 4),
      ],
    );
  }
}
