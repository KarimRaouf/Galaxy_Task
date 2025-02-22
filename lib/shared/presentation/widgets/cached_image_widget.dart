import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/helper.dart';
import '../../../generated/assets.dart';

class CachedImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imageUrl;
  final double? radius;

  CachedImageWidget({
    Key? key,
    this.width,
    this.height,
    required this.imageUrl,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 16.r),
      child: SizedBox(
        height: height,
        width: width,
        child: imageUrl != ""
            ? CachedNetworkImage(
                imageUrl: imageUrl ?? "",
                height: height,
                width: width,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Image.asset(
                  Assets.imagesNoImage,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                Assets.imagesNoImage,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
