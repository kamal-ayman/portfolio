import 'package:flutter/material.dart';

import 'kpi_highlight.dart';

class KpiHighlightWrapper extends StatefulWidget {
  final String label;
  final num value;

  const KpiHighlightWrapper({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  State<KpiHighlightWrapper> createState() => _KpiHighlightWrapperState();
}

class _KpiHighlightWrapperState extends State<KpiHighlightWrapper> {
  late bool isInitialized;

  @override
  void initState() {
    isInitialized = false;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isInitialized = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KpiHighlightWidget(
      label: widget.label,
      value: isInitialized
          ? widget.value
          : (widget.value - 10) < 0
          ? 0
          : widget.value - 10,
    );
  }
}
