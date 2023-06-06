import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:informate/data/models/basic_response_model.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(article.title ?? '-'),
      subtitle: Text(article.description ?? '-'),
      leading: article.image == null ? null : Image.network(article.image!),
      onTap: () {
        // Acción a realizar cuando se seleccione un artículo
        if (kDebugMode) {
          print('Artículo seleccionado: ${article.title}');
        }
      },
    );
  }
}
