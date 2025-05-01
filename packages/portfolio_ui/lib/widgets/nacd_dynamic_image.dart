import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ui/portfolio_ui.dart';
import 'package:portfolio_core/portfolio_core.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:vector_graphics/vector_graphics.dart';

class PortfolioDynamicImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final BoxFit? boxFit;
  final double? radius;

  const PortfolioDynamicImage({
    super.key,
    this.boxFit,
    this.radius,
    required this.path,
    this.width = double.maxFinite,
    this.height = double.maxFinite,
  });

  @override
  Widget build(BuildContext context) {
    final image = ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height, maxWidth: width),
      child:
          path.isSvgUrl
              ? VectorGraphic(
                fit: boxFit ?? BoxFit.contain,
                loader:
                    path.isLocalPath
                        ? AssetBytesLoader(path)
                        : NetworkBytesLoader(Uri.parse(path)),
              )
              : path.isLocalPath
              ? FadeInImage(
                fit: boxFit,
                image: AssetImage(path),
                placeholder: MemoryImage(kTransparentImage),
              )
              : CachedNetworkImage(imageUrl: path, fit: boxFit),
    );
    if (radius != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius!),
        child: SizedBox(
          width: radius! * 2,
          height: radius! * 2,
          child: ColoredBox(color: context.backgroundColor, child: image),
        ),
      );
    }
    return image;
  }
}
