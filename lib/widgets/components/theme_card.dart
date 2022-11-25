import 'package:flutter/material.dart';

class Themecard extends StatelessWidget {
  const Themecard(
      {
      this.cardColor = Colors.white,
      this.cardHeight = 50,
      this.cardWidth = 50,
      this.cardChild = const Text(''),
      this.cardBorderColor = Colors.amber,
      this.cardRadius = 0,
      this.cardBorderWidthLeft = 0,
      this.cardBorderWidthRight =0,
      this.cardBorderWidthTop = 0,
      this.cardBorderWidthBottom =0,
      Key? key,
      this.buttonAction})
      : super(key: key);
  final Color cardColor, cardBorderColor;
  final double cardHeight, cardWidth, cardRadius, cardBorderWidthLeft, cardBorderWidthRight, cardBorderWidthTop, cardBorderWidthBottom;
  final Widget cardChild;
  final void buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: cardColor,
          borderRadius: BorderRadius.circular(cardRadius),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.4,
              blurRadius: 10,
              offset: Offset(0, 1),
            )
          ],
          border: Border(
            left: BorderSide(
            width: cardBorderWidthLeft,
            color: cardBorderColor
            ),
            right: BorderSide(
            width: cardBorderWidthRight,
            color: cardBorderColor
            ),
            top: BorderSide(
            width: cardBorderWidthTop,
            color: cardBorderColor
            ),
            bottom: BorderSide(
            width: cardBorderWidthBottom,
            color: cardBorderColor
            ),
            
          ) ,),
      child: cardChild,
    );
  }
}
