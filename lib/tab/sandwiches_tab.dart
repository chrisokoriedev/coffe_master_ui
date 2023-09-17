import 'package:coffe_master_ui/import.dart';
import 'package:flutter/material.dart';

class SandWichesTab extends StatelessWidget {
  const SandWichesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return ListView.builder(
        physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
        scrollDirection: Axis.horizontal,
        itemCount: getSandwichesAndSnackDetails.length,
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          final data = getSandwichesAndSnackDetails[index];

          return Container(
            width: 160,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: lightBlueInput,
              borderRadius: BorderRadius.circular(20),
              gradient: linearPattern(),
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
                        image: DecorationImage(
                            image: AssetImage(data.imageUrl),
                            fit: BoxFit.cover)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Colors.black.withOpacity(0.5)),
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
                ]),
          );
        });
  }

 
}
