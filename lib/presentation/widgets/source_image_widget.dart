
import 'package:flutter/material.dart';
import 'package:informate/data/utils/methods.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/images/primary_network_image.dart';

class SourceImageWidget extends StatelessWidget {
  const SourceImageWidget({
    super.key,
    required this.sourceUrl,
  });
  final String sourceUrl;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getFaviconUrl(getBaseUrl(sourceUrl)),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
            },
            child: snapshot.hasData
                ? PrimaryNetworkImage(
                    imageUrl: snapshot.data!,
                    showImageOnError: false,
                    width: 30,
                    height: 25,
                  ).horizontalPadding(3)
                : Container());
      },
    );
  }
}
