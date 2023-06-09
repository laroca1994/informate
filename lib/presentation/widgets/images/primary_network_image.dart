import 'package:flutter/material.dart';
import 'package:informate/core/gen/assets.gen.dart';

class PrimaryNetworkImage extends StatelessWidget {
  const PrimaryNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.showImageOnError = true,
  });
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit fit;
  final bool showImageOnError;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      image: NetworkImage(imageUrl),
      placeholder: AssetImage(Assets.gif.cargando.path),
      imageErrorBuilder: (context, error, stackTrace) => showImageOnError
          ? Image.asset(
              Assets.jpeg.noImage.path,
              width: width,
              height: height,
              fit: fit,
            )
          : Container(),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
