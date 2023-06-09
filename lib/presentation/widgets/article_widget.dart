import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/extensions/date_extensions.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/images/primary_network_image.dart';
import 'package:informate/presentation/widgets/row_text_widget.dart';
import 'package:informate/presentation/widgets/source_image_widget.dart';
import 'package:informate/presentation/widgets/text/primary_description.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget(this.article, {Key? key}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Acción a realizar cuando se seleccione un artículo
        if (kDebugMode) {
          print('Artículo seleccionado: ${article.title}');
        }
      },
      child: OrientationBuilder(builder: (context, orientation) {
        final size = MediaQuery.of(context).size;
        final width = orientation == Orientation.portrait
            ? size.width * .30
            : size.width * .2;
        final height = orientation == Orientation.portrait
            ? size.height * .2
            : size.height * .8;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (article.image != null)
              Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: PrimaryNetworkImage(
                  imageUrl: article.image!,
                  width: width,
                  height: height,
                ),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SourceImageWidget(sourceUrl: article.url ?? ''),
                      Expanded(
                        child: RowTextWidget(
                          first: article.source?.toUpperCase(),
                          second: article.publishedAt?.formattedDate,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  PrimaryTitle(
                    article.title ?? '-',
                    overflow: TextOverflow.visible,
                    maxLines: null,
                  ),
                  const SizedBox(height: 10.0),
                  PrimaryDescription(article.description ?? '-'),
                  const SizedBox(height: 10.0),
                  RowTextWidget(
                    first:
                        '${article.author == null ? '' : ('${article.author!},')} ${article.source}',
                    second:
                        'Categoria: ${article.category?.capitalizeFirstLetter() ?? '-'}',
                    fontSizeFirst: fontSizeDefault,
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    ).symmetricPadding(15, 15);
  }
}
