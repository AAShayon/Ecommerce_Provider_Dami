import'package:test_commerce/common/widgets/custom_shapes/curved_edges.dart';
import 'package:flutter/material.dart';
class AppCurvedEdgeWidget extends StatelessWidget {
  const AppCurvedEdgeWidget({
    super.key,required this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child:child,

    );
  }
}
