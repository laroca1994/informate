import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/presentation/widgets/text/primary_bold_text.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.first,
    required this.second,
    this.fontSizeFirst,
  });
  final String? first;
  final String? second;
  final double? fontSizeFirst;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: PrimaryTitle(
                  first ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: fontSizeFirst,
                ),
              ),
            ],
          ),
        ),
        Flexible(
            child: PrimaryBoldText(
          second ?? '',
          fontSize: fontSizeDefault-5,
        )),
      ],
    );
  }
}
