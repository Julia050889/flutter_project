import 'package:flutter/material.dart';
import 'package:slider_carousel/slider/slider_styles.dart';

class SliderContainer extends StatelessWidget {
  final Color first;
  final Color second;
  final String cardType;
  final String cardNumber;
  final String cardEnd;

  const SliderContainer(
      this.first, this.second, this.cardType, this.cardNumber, this.cardEnd,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      margin: const EdgeInsets.only(top: 20),
      width: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          first,
          second,
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('ABB',
                  style: TextStyle(color: SliderStyles.mainColor)),
              Text(cardType,
                  style: const TextStyle(
                    color: SliderStyles.mainColor,
                    fontSize: 20,
                  ))
            ],
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        Column(children: [
          Text(
            cardNumber,
            style: const TextStyle(color: SliderStyles.mainColor, fontSize: 17),
          )
        ]),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Թարմացվել է 07/22',
                    style: TextStyle(fontSize: 12, color: SliderStyles.grey),
                  ),
                  Text(
                    'Վավեր է մինչև',
                    style: TextStyle(fontSize: 12, color: SliderStyles.grey),
                  )
                ]),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.remove_red_eye),
                Text(cardEnd,
                    style: const TextStyle(color: SliderStyles.mainColor))
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
