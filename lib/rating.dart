import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RatingWidget extends StatefulWidget {
  final double rating;
  const RatingWidget({super.key, required this.rating});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(5, (index) {
      if (widget.rating == 0) {
        return const Icon(Icons.star_border);
      } else if (index < widget.rating && index > widget.rating - 1) {
        return const Icon(
          Icons.star_half,
          color: Colors.orange,
        );
      } else if (index < widget.rating) {
        return const Icon(
          Icons.star,
          color: Colors.orange,
        );
      }
      return const Icon(Icons.star_border);
    }));
  }
}
