import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const ImageWidget(
      {Key? key, required this.url, this.width, this.height, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url.toLowerCase().endsWith(".svg")
        ? SvgPicture.network(
            url,
            width: width,
            height: height,
            fit: fit ?? BoxFit.contain,
          )
        : CachedNetworkImage(imageUrl: url);
  }
}
