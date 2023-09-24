import 'dart:ui';

import 'package:coffe_master_ui/import.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final _valueNotifier = ValueNotifier(false);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(data.imageUrl), fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: menuBlue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const BackButton(
                              style: ButtonStyle(
                                  iconSize: MaterialStatePropertyAll(15),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(10, 10)))),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: menuBlue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            CupertinoIcons.bolt_circle,
                            size: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 7,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.title,
                                      style: text.titleLarge!.copyWith(
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(data.subtitle,
                                        style: text.titleSmall!),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: brownColor,
                                          size: 18,
                                        ),
                                        Text(data.rating.toString(),
                                            style: text.titleMedium!),
                                      ],
                                    ),
                                  ]),
                            ),
                            Flexible(
                              flex: 4,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: menuBlue,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.coffee,
                                                size: 18,
                                                color: brownColor,
                                              ),
                                              Text('Coffee',
                                                  style: text.bodySmall!
                                                      .copyWith(height: 1.6)),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: menuBlue,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.water_drop,
                                                size: 18,
                                                color: brownColor,
                                              ),
                                              Text('Milk',
                                                  style: text.bodySmall!
                                                      .copyWith(height: 1.6)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: double.infinity,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: menuBlue,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Medium Frosted',
                                              style: text.bodySmall!.copyWith(
                                                  height: 1.6,
                                                  color: Colors.white60)),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Description',
                    style: text.bodyMedium!.copyWith(color: Colors.white70),
                  ),
                  ValueListenableBuilder<bool>(
                      valueListenable: _valueNotifier,
                      builder: (context, value, child) {
                        return Column(
                          children: [
                            Text(
                              data.description!,
                              maxLines: value ? null : 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            TextButton(
                              onPressed: () {
                                _valueNotifier.value = !_valueNotifier.value;
                              },
                              child: const Text('Read More'),
                            ),
                          ],
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
