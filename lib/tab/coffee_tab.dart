import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffe_master_ui/list.dart';
import 'package:flutter/material.dart';

class CoffeeTab extends StatelessWidget {
  const CoffeeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getCoffeeDetail.length,
          itemBuilder: (context, index) {
            final data = getCoffeeDetail[index];
            return Container(
              child: Column(children: [
                CachedNetworkImage(
                  imageUrl: data.imageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                // Container(
                //   width: 30,
                //   height: 30,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: CachedNetworkImageProvider(data.imageUrl))),
                // )
              ]),
            );
          }),
    );
  }
}
