import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:informate/core/gen/assets.gen.dart';
import 'package:informate/data/const/const.dart';

class PrimaryNetworkImage extends StatelessWidget {
  const PrimaryNetworkImage({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.showImageOnError = true,
    this.useFirstLoading = true,
    this.borderRadius,
    this.isSvg = false,
  }) : super(key: key);

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit fit;
  final bool showImageOnError;
  final bool useFirstLoading;
  final double? borderRadius;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? borderRadiusDefault),
      child: isSvg
          ? SvgPicture.network(
              imageUrl,
              placeholderBuilder: (BuildContext context) => Image.asset(
                Assets.gif.cargando2.path,
                width: width,
                height: height,
                fit: fit,
              ),
              width: width,
              height: height,
              fit: fit,
            )
          : FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: AssetImage(Assets.gif.cargando2.path),
              imageErrorBuilder: (context, error, stackTrace) =>
                  showImageOnError
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
