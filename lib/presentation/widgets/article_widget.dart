import 'package:flutter/material.dart';
import 'package:informate/data/extensions/date_extensions.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/images/primary_network_image.dart';
import 'package:informate/presentation/widgets/row_text_widget.dart';
import 'package:informate/presentation/widgets/text/primary_caption.dart';
import 'package:informate/presentation/widgets/text/source_image_widget.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    const heightFirstRow = 25.0;
    const sizeImage = 120.0;
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: PrimaryNetworkImage(
            imageUrl: article.image ?? '',
            width: sizeImage,
            height: sizeImage,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article.category != null)
                PrimaryCaption(article.category!.capitalizeFirstLetter()),
              PrimaryTitle(
                article.title ?? '-',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height:5.0),
              SizedBox(
                height: heightFirstRow,
                child: Row(
                  children: [
                    SourceImageWidget(
                      sourceUrl: article.url ?? '',
                      height: heightFirstRow,
                    ),
                    Expanded(
                      child: RowTextWidget(
                        first: article.source,
                        second: article.publishedAt?.formattedDate,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ],
    ).symmetricPadding(10, 15);
  }
}
