import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FadingNetworkImage extends StatelessWidget {
  const FadingNetworkImage({
    super.key,
    required this.url,
    this.fit,
    this.height,
    this.width,
    this.hasFaceFocusedImage = false,
    this.errorWidget,
    this.alignment,
    this.shouldFormatUrl = true,
  });

  final String url;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final bool hasFaceFocusedImage;
  final Widget? errorWidget;
  final Alignment? alignment;
  final bool shouldFormatUrl;

  @override
  Widget build(BuildContext context) {
    final dpi = MediaQuery.of(context).devicePixelRatio;

    if (url.isEmpty && errorWidget != null) {
      return SizedBox(
        width: width,
        height: height,
        child: errorWidget,
      );
    }

    var updatedUrl = url;
    final dpiAwareWidth = width != null ? width! * dpi : null;
    final dpiAwareHeight = height != null ? height! * dpi : null;

    if (shouldFormatUrl) {
      updatedUrl = '$url?auto=format';

      if (width != null && width!.isFinite) {
        updatedUrl += '&width=$dpiAwareWidth';
      }

      if (height != null && height!.isFinite) {
        updatedUrl += '&height=$dpiAwareHeight';
      }

      if (hasFaceFocusedImage) {
        updatedUrl += '&fit=facearea&facepad=3';
      }
    }

    return CachedNetworkImage(
      imageUrl: updatedUrl,
      fit: fit,
      height: height,
      width: width,
      memCacheHeight: dpiAwareHeight?.toInt(),
      memCacheWidth: dpiAwareWidth?.toInt(),
      maxWidthDiskCache: dpiAwareWidth?.toInt(),
      maxHeightDiskCache: dpiAwareHeight?.toInt(),
      alignment: alignment ?? Alignment.center,
      cacheKey: updatedUrl,
      errorWidget: errorWidget != null
          ? (_, __, dynamic ___) {
              return errorWidget!;
            }
          : null,
      fadeInDuration: const Duration(milliseconds: 150),
    );
  }
}
