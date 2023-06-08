import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/infinite_scroll/utils/utils.dart';

class PagedListViewWidget<T> extends ConsumerStatefulWidget {
  const PagedListViewWidget({
    super.key,
    this.firstPage = 0,
    this.firstElements = const [],
    this.totalPages,
    this.fetch,
    this.childAspectRatio = 1,
    required this.itemBuilder,
    this.invisibleItemsThreshold = 2,
  });

  final Future<BasicResponse<T>> Function(int)? fetch;
  final List<T> firstElements;
  final int firstPage;
  final int? totalPages;
  final double childAspectRatio;
  final Widget Function(BuildContext context, T element, int index) itemBuilder;
  final int invisibleItemsThreshold;

  @override
  ConsumerState<PagedListViewWidget<T>> createState() =>
      _PagedListViewWidgetState<T>();
}

class _PagedListViewWidgetState<T>
    extends ConsumerState<PagedListViewWidget<T>> {
  late PagingController<int, T> _pagingController;

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _pagingController = PagingController(
      firstPageKey: widget.firstPage,
      invisibleItemsThreshold: widget.invisibleItemsThreshold,
    );
    if (widget.totalPages != null) {
      if (widget.firstPage + 1 < widget.totalPages!) {
        _pagingController.appendPage(
            widget.firstElements, widget.firstPage + 1);
      } else {
        _pagingController.appendLastPage(widget.firstElements);
      }
    }
    _pagingController.addPageRequestListener(
      (pageKey) => fetchPage<T>(
        widget.fetch,
        pageKey,
        _pagingController,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          if (notification.metrics.axis == Axis.vertical) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        }
        return false;
      },
      child: PagedListView<int, T>(
        pagingController: _pagingController,
        addAutomaticKeepAlives: false,
        builderDelegate: pagedChildBuilderDelegate(
          context: context,
          itemBuilder: widget.itemBuilder,
          pagingController: _pagingController,
        ),
      ).symmetricPadding(10, 10),
    );
  }
}
