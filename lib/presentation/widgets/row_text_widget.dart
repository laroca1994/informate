import 'package:flutter/material.dart';
import 'package:informate/presentation/widgets/text/primary_caption.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.first,
    required this.second,
  });
  final String? first;
  final String? second;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: PrimaryCaption(
                  first ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Flexible(
            child: PrimaryCaption(
          second ?? '',
          textAlign: TextAlign.end,
        )),
      ],
    );
  }
}
