import 'dart:ui';

import 'graph_model.dart';

class BarGraphModel{
  final List<GraphModel> graph;
  final String label;
  final Color color;

  BarGraphModel({required this.graph, required this.label, required this.color});

}