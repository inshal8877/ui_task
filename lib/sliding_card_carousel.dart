import 'package:branchx_ui_test/sliding_cards/first_blue_card.dart';
import 'package:branchx_ui_test/sliding_cards/second_blue_card.dart';
import 'package:branchx_ui_test/sliding_cards/gold_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final caroselCardList = [
  FirstBlueCard(),
  SecondBlueCard(),
  GoldCard()
];

class SlidingCardCarousel extends StatefulWidget {
  @override
  _SlidingCardCarouselState createState() => _SlidingCardCarouselState();
}

class _SlidingCardCarouselState extends State<SlidingCardCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            autoPlay: false,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            animateToClosest: false,
            enlargeCenterPage: false,
            padEnds: false,
            pageSnapping: true,
            autoPlayCurve: Curves.easeInOut,
            onPageChanged: (index, reason) {
              setState(
                    () {
                  _currentIndex = index;
                },
              );
            },
          ), items: caroselCardList,

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: caroselCardList.map((urlOfItem) {
            int index = caroselCardList.indexOf(urlOfItem);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              decoration: ShapeDecoration(
                  shape: CircleBorder(side: BorderSide(width: 1, color: Color(0xffFF808D))),
                  color: _currentIndex == index
                      ? Color(0xffFF808D)
                      : Colors.white
              ),
            );
          }).toList(),
        )
      ],
    );


  }

}
