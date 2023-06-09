import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:html/parser.dart';

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
