import 'dart:ui';

import 'package:coffe_master_ui/import.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final valueNotifier = ValueNotifier(false);
    final selectedOption = ValueNotifier('S');

    return Scaffold(
      body: SingleChildScrollView(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Description',
                    style: text.bodyMedium!
                        .copyWith(color: Colors.white70, height: 1.7),
                  ),
                  ValueListenableBuilder<bool>(
                      valueListenable: valueNotifier,
                      builder: (context, value, child) {
                        return Wrap(
                          children: [
                            Text(
                              data.description!,
                              style: text.bodySmall,
                              maxLines: value ? null : 2,
                              overflow: value
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                            ),
                            GestureDetector(
                              onTap: () {
                                valueNotifier.value = !valueNotifier.value;
                              },
                              child: Text(
                                value ? 'Read Less' : 'Read More',
                                style: text.bodyMedium!.copyWith(
                                  color: brownColor,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                  const SizedBox(height: 20),
                  Text(
                    'Size',
                    style: text.bodyMedium!
                        .copyWith(color: Colors.white70, height: 1.7),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionButton(text: 'S', selectedOption: selectedOption),
                      OptionButton(text: 'M', selectedOption: selectedOption),
                      OptionButton(text: 'L', selectedOption: selectedOption),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Column(
                    children: [
                      Text(
                        'Price',
                        style: text.bodyMedium!
                            .copyWith(color: Colors.white70, height: 1.7),
                      ),
                      Text(
                        '\$${data.price.toString()}',
                        style: text.titleLarge,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 8,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: brownColor,
                      ),
                      child: Text(
                        'Buy Now',
                        style: text.bodyLarge!
                            .copyWith(fontWeight: FontWeight.w900),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String text;
  final ValueNotifier<String> selectedOption;

  const OptionButton(
      {super.key, required this.text, required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: selectedOption,
        builder: (context, value, child) {
          return GestureDetector(
            onTap: () => selectedOption.value = text,
            child: Container(
                width: 100,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: value == text ? scafffoldBg : lightBlueInput,
                    border: Border.all(
                        color: value == text ? brownColor : Colors.transparent),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  text,
                  style: TextStyle(color: value == text ? brownColor : null),
                )),
          );
        });
  }
}
