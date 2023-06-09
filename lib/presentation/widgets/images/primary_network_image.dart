import 'package:flutter/material.dart';
import 'package:informate/core/gen/assets.gen.dart';
import 'package:informate/data/const/const.dart';

class PrimaryNetworkImage extends StatelessWidget {
  const PrimaryNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.showImageOnError = true,
    this.useFirstLoading = true,
    this.borderRadius,
  });
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit fit;
  final bool showImageOnError;
  final bool useFirstLoading;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? borderRadiusDefault),
      child: FadeInImage(
        image: NetworkImage(imageUrl),
        placeholder: AssetImage(Assets.gif.cargando2.path),
        imageErrorBuilder: (context, error, stackTrace) => showImageOnError
            ? Image.asset(
                useFirstLoading
                    ? Assets.jpeg.noImageRemovebgPreview.path
                    : Assets.jpeg.noImage2RemovebgPreview.path,
                width: width,
                height: height,
                fit: fit,
              )
            : Container(),
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
