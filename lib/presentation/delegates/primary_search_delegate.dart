import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';

class PrimarySearchDelegate extends SearchDelegate {
  PrimarySearchDelegate(this.category);

  final CategoriesEnum category;

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      inputDecorationTheme: const InputDecorationTheme(
        
        hintStyle: TextStyle(color: Colors.white,fontSize: fontSizeDefault),
      )
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear),
        ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.filter_list),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const PrimaryText('Resultados');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return PrimaryText(category.value.capitalizeFirstLetter());
  }

  @override
  String? get searchFieldLabel =>
      'Buscar noticia en ${category.value.capitalizeFirstLetter()}';
}
