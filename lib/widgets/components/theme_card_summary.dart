import 'package:flutter/material.dart';

class ThemeCardSummary extends StatelessWidget {
  const ThemeCardSummary({
    this.title = '68',
    this.subTitle = 'Hear Rate BPM',
    this.icon = const Icon(Icons.female),
    this.titleColor = Colors.white,
    this.subColor = Colors.white70,
    Key? key,
  }) : super(key: key);
  
  final Widget icon;
  final Color titleColor, subColor;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:  [
               icon
            ],
          ),
          Row(
            children:  [
              const Expanded(child: Text('')),
              Text(
                title,
                style: TextStyle(fontSize: 25, color: titleColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Text(
                subTitle,
                style: TextStyle(fontSize: 12, color: subColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
