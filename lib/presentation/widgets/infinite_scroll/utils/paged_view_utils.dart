// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/status/status.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Future<void> fetchPage<T>(
  Future<BasicResponse<T>> Function(int)? fetch,
  int pageKey,
  PagingController<int, T> pagingController,
) async {
  try {
    if (fetch == null) return;
    final data = await fetch.call(pageKey);
    final isLastPage = data.pagination.total <=
        (data.pagination.offset + data.pagination.limit);
    if (isLastPage) {
      pagingController.appendLastPage(data.data);
    } else {
      final nextPageKey = pageKey + 1;
      pagingController.appendPage(data.data, nextPageKey);
    }
  } catch (error) {
    if (error is FlutterError || error is TypeError) {
      if (kDebugMode) print(error);
      return;
    }
    pagingController.error = error;
  }
}

PagedChildBuilderDelegate<T> pagedChildBuilderDelegate<T>({
  required BuildContext context,
  required PagingController<int, T> pagingController,
  required Widget Function(BuildContext, T, int) itemBuilder,
}) {
  const errorText = 'Error al cargar los elementos';
  return PagedChildBuilderDelegate<T>(
    animateTransitions: true,
    newPageProgressIndicatorBuilder: (context) =>
        const LoadingStatus().verticalPadding(10),
    noItemsFoundIndicatorBuilder: (context) => const Center(
      child: PrimaryText('No hay elementos para mostrar'),
    ),
    firstPageProgressIndicatorBuilder: (context) => const LoadingStatus(),
    newPageErrorIndicatorBuilder: (context) => ErrorStatus(
      messagge: errorText,
      onPressed: () => pagingController.retryLastFailedRequest(),
    ),
    firstPageErrorIndicatorBuilder: (context) => ErrorStatus(
      messagge: errorText,
      onPressed: () => pagingController.retryLastFailedRequest(),
    ),
    itemBuilder: itemBuilder,
  );
}
