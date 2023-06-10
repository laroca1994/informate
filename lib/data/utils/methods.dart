import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart' as dom;
import 'package:informate/data/const/const.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

String getBaseUrl(String url) {
  final uri = Uri.parse(url);
  final baseUrl = '${uri.scheme}://${uri.host}';
  return baseUrl;
}

Future<String> getFaviconUrl(String baseUrl) async {
  if (baseUrl.isEmpty) return '';
  try {
    final response = await Dio().get(baseUrl);
    if (response.statusCode == 200) {
      final document = parse(response.data);
      final faviconElement =
          document.querySelector('link[rel="shortcut icon"]');
      if (faviconElement != null) {
        final faviconUrl = faviconElement.attributes['href'];
        if (faviconUrl != null && faviconUrl.isNotEmpty) {
          if (!faviconUrl.startsWith('http')) {
            // Manejar rutas relativas
            final uri = Uri.parse(baseUrl);
            final faviconUri = uri.resolve(faviconUrl);
            return faviconUri.toString();
          }
          return faviconUrl;
        }
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error: $e');
    }
  }
  return '';
}

Future<List<dom.Element>> getCountries({
  String url = searchCountryUrl,
}) async {
  final dio = Dio();

  try {
    final response = await dio.get(url);

    final document = parse(response.data);

    final sidebarElements = document.getElementsByClassName('sidebar');

    if (sidebarElements.isNotEmpty) {
      final hijosEnlaces = sidebarElements.first.getElementsByTagName('a');
      return hijosEnlaces;
    } else {
      return [];
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error al obtener los hijos de la clase "sidebar": $e');
    }
    return [];
  }
}

void deleteFromFormArray<T>(FormArray<T> formArray, T element) {
  final index =
      formArray.controls.indexWhere((control) => control.value == element);
  if (index != -1) {
    formArray.removeAt(index);
  }
}

List<T> convertToList<T>(FormArray<T> formArray) {
  if (formArray.value == null) return [];
  return formArray.value!
      .where((element) => element != null)
      .map((e) => e as T)
      .toList();
}

void addElement<T>(FormArray<T> formArray, T element) {
  final list = List<T>.of(formArray.value?.map((e) => e as T) ?? []);
  formArray.updateValue([...list, element]);
}
