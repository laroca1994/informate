import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class PrimaryDescription extends StatelessWidget {
  final String description;

  const PrimaryDescription(
    this.description, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.bold);
    return ReadMoreText(
      description,
      trimLines: 3,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Ver más',
      trimExpandedText: 'Ver menos',
      moreStyle: style,
      lessStyle: style,
      style: const TextStyle(fontSize: 16),
    );
  }
}
