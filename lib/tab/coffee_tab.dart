import 'package:coffe_master_ui/list.dart';
import 'package:coffe_master_ui/main.dart';
import 'package:flutter/material.dart';

class CoffeeTab extends StatelessWidget {
  const CoffeeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: getCoffeeDetail.length,
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          final data = getCoffeeDetail[index];

          return Container(
            width: 160,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: lightBlueInput,
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.center,
                colors: [lightBlue, menuBlue],
                stops: [0.0, 1.0],
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Colors.black.withOpacity(0.3)),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 14,
                                  color: brownColor,
                                ),
                                const SizedBox(width: 5),
                                Text(data.rating.toString()),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    data.title,
                    style: text.bodyMedium,
                  ),
                  Text(
                    data.subtitle,
                    style: text.labelSmall,
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      const Text(
                        '\$',
                        style: TextStyle(color: brownColor),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        data.price.toString(),
                        style: text.bodyMedium,
                      ),
                    ],
                  )
                  // CachedNetworkImage(
                  //   imageUrl: data.imageUrl,
                  //   progressIndicatorBuilder: (context, url, downloadProgress) =>
                  //       CircularProgressIndicator(
                  //           value: downloadProgress.progress),
                  //   errorWidget: (context, url, error) => Icon(Icons.error),
                  // ),
                  // Container(
                  //   width: 30,
                  //   height: 30,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: CachedNetworkImageProvider(data.imageUrl))),
                  // )
                ]),
          );
        });
  }
}
